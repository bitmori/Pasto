//
//  PBPrefAccountViewController.h
//  Pasto
//
//  Created by Ke Yang on 10/4/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <RHPreferences/RHPreferences.h>

@interface PBPrefAccountViewController : NSViewController <RHPreferencesViewControllerProtocol>
@property (weak) IBOutlet NSTextField *userTextField;
@property (weak) IBOutlet NSSecureTextField *passTextField;
@property (weak) IBOutlet NSTextField *promptLabel;
- (IBAction)onSaveButton:(id)sender;
- (IBAction)onHelpButton:(id)sender;
- (IBAction)onResetButton:(id)sender;


@end
