//
//  PBPrefAccountViewController.m
//  Pasto
//
//  Created by Ke Yang on 10/4/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import "PBPrefAccountViewController.h"
#import "PBHelper.h"

@interface PBPrefAccountViewController ()

@end

@implementation PBPrefAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (IBAction)onSaveButton:(id)sender {
    //NSLog(@"%@",[[[PBHelper PBSyntaxDict] allKeysForObject:@"JavaScript"] lastObject]);
}

- (IBAction)onHelpButton:(id)sender {
    //NSLog(@"%@",[PBHelper PBSyntaxDict][@"js"]);
}

- (IBAction)onResetButton:(id)sender {
}

-(NSString*)identifier{
    return NSStringFromClass(self.class);
}
-(NSImage*)toolbarItemImage{
    return [NSImage imageNamed:NSImageNameUserAccounts];
}
-(NSString*)toolbarItemLabel{
//    return @"Account";
    return NSLocalizedString(@"Account", @"AccountToolbarItemLabel");
}

-(NSView*)initialKeyView{
    return self.promptLabel;
}
@end
