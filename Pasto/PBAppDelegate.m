//
//  PBAppDelegate.m
//  Pasto
//
//  Created by Ke Yang on 10/2/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import "PBAppDelegate.h"

@implementation PBAppDelegate

@synthesize panelController = _panelController;
@synthesize menubarController = _menubarController;
@synthesize prefWndController = _prefWndController;

- (void) dealloc
{
    [_panelController removeObserver:self forKeyPath:@"hasActivePanel"];
    [_panelController removeObserver:self forKeyPath:@"isPrefButtonPressed"];
    [_panelController removeObserver:self forKeyPath:@"isDetailButtonPressed"];
    _prefWndController = nil;
}

void *kContextActivePanel = &kContextActivePanel;
void *kContextPref = &kContextPref;
void *kContextDetail = &kContextDetail;

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == kContextDetail) {
        if (self.panelController.isDetailButtonPressed) {
            [self showDetail];
            self.panelController.isDetailButtonPressed = false;
        }
    } else if (context == kContextPref) {
        if (self.panelController.isPrefButtonPressed) {
            [self showPref];
            self.panelController.isPrefButtonPressed = false;
        }
    } else if (context == kContextActivePanel) {
        self.menubarController.hasActiveIcon = self.panelController.hasActivePanel;
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.menubarController = [[MenubarController alloc] init];
}

- (NSApplicationTerminateReply)applicationShouldTerminate:(NSApplication *)sender
{
    self.menubarController = nil;
    return NSTerminateNow;
}

- (void)showPref
{
    if (!_prefWndController) {
        PBPrefAboutViewController * _about = [[PBPrefAboutViewController alloc] initWithNibName:@"PBPrefAboutViewController" bundle:nil];
        PBPrefAccountViewController * _account = [[PBPrefAccountViewController alloc] initWithNibName:@"PBPrefAccountViewController" bundle:nil];
        PBPrefGeneralViewController * _general = [[PBPrefGeneralViewController alloc] initWithNibName:@"PBPrefGeneralViewController" bundle:nil];
        NSArray * controllers = @[_general, _account, [RHPreferencesWindowController flexibleSpacePlaceholderController],_about];
        _prefWndController = [[RHPreferencesWindowController alloc] initWithViewControllers:controllers andTitle:NSLocalizedString(@"Preferences", @"Preferences Window Title")];
    }
    [_prefWndController showWindow:self];
}

- (void)showDetail
{
    if (!_detailWindow) {
        _detailWindow = [[PBDetailWindowController alloc] initWithWindowNibName:@"PBDetailWindowController"];
    }
    [_detailWindow showWindow:self];
}

- (IBAction)togglePanel:(id)sender
{
    self.menubarController.hasActiveIcon = !self.menubarController.hasActiveIcon;
    self.panelController.hasActivePanel = self.menubarController.hasActiveIcon;
}

- (IBAction)onMainMenuPref:(id)sender {
    [self showPref];
}

- (PanelController *)panelController
{
    if (_panelController == nil) {
        _panelController = [[PanelController alloc] initWithDelegate:self];
        [_panelController addObserver:self forKeyPath:@"hasActivePanel" options:0 context:kContextActivePanel];
        [_panelController addObserver:self forKeyPath:@"isPrefButtonPressed" options:0 context:kContextPref];
        [_panelController addObserver:self forKeyPath:@"isDetailButtonPressed" options:0 context:kContextDetail];
    }
    return _panelController;
}

- (StatusItemView *)statusItemViewForPanelController:(PanelController *)controller
{
    return self.menubarController.statusItemView;
}

@end
