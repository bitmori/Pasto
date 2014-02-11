//
//  PBPrefGeneralViewController.h
//  Pasto
//
//  Created by Ke Yang on 10/4/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <RHPreferences/RHPreferences.h>

@interface PBPrefGeneralViewController : NSViewController <RHPreferencesViewControllerProtocol>
@property (weak) IBOutlet NSTextField *promptTextField;

@end
