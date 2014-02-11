//
//  PBPrefAboutViewController.h
//  Pasto
//
//  Created by Ke Yang on 10/3/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <RHPreferences/RHPreferences.h>

@interface PBPrefAboutViewController : NSViewController<RHPreferencesViewControllerProtocol>
@property (weak) IBOutlet NSTextField *aboutText;

@end
