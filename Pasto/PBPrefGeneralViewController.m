//
//  PBPrefGeneralViewController.m
//  Pasto
//
//  Created by Ke Yang on 10/4/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import "PBPrefGeneralViewController.h"

@interface PBPrefGeneralViewController ()

@end

@implementation PBPrefGeneralViewController

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
    return [NSImage imageNamed:NSImageNamePreferencesGeneral];
}
-(NSString*)toolbarItemLabel{
    return NSLocalizedString(@"General", @"GeneralToolbarItemLabel");
}

-(NSView*)initialKeyView{
    return self.promptTextField;
    //    return self.aboutText;
}

@end
