//
//  PBDetailWindowController.h
//  Pasto
//
//  Created by Ke Yang on 10/4/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PBDetailWindowController : NSWindowController <NSComboBoxDataSource>

@property (nonatomic, strong) NSArray* syntaxCodeArr;
@property (nonatomic, strong) NSArray* syntaxNameArr;
@property (nonatomic, strong) NSArray* timeCodeArr;
@property (nonatomic, strong) NSArray* timeNameArr;
@property (nonatomic, strong) NSArray* AccessNameArr;

@property (weak) IBOutlet NSComboBox *syntaxComboBox;
@property (weak) IBOutlet NSComboBox *timeComboBox;
@property (weak) IBOutlet NSComboBox *accessComboBox;
- (IBAction)onCancelButton:(id)sender;
- (IBAction)onPasteButton:(id)sender;

@end
