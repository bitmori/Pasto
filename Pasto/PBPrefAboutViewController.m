//
//  PBPrefAboutViewController.m
//  Pasto
//
//  Created by Ke Yang on 10/3/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import "PBPrefAboutViewController.h"

@interface PBPrefAboutViewController ()

@end

@implementation PBPrefAboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

-(NSString*)identifier{
    return NSStringFromClass(self.class);
}
-(NSImage*)toolbarItemImage{
    return [NSImage imageNamed:NSImageNameInfo];
}
-(NSString*)toolbarItemLabel{
    return NSLocalizedString(@"About", @"AboutToolbarItemLabel");
}

-(NSView*)initialKeyView{
    return self.aboutText;
}

@end
