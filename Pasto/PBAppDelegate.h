//
//  PBAppDelegate.h
//  Pasto
//
//  Created by Ke Yang on 10/2/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <RHPreferences/RHPreferences.h>

#import "PBPrefAboutViewController.h"
#import "PBPrefAccountViewController.h"
#import "PBPrefGeneralViewController.h"

#import "PBDetailWindowController.h"
#import "MenubarController.h"
#import "PanelController.h"

@interface PBAppDelegate : NSObject <NSApplicationDelegate, PanelControllerDelegate> {
    RHPreferencesWindowController * _prefWndController;
    PBDetailWindowController * _detailWindow;
}
@property (nonatomic, strong) MenubarController * menubarController;
@property (nonatomic, strong, readonly) PanelController * panelController;
@property (retain) RHPreferencesWindowController * prefWndController;

- (IBAction)togglePanel:(id)sender;
- (IBAction)onMainMenuPref:(id)sender;
- (void) showPref;
- (void) showDetail;

@end
