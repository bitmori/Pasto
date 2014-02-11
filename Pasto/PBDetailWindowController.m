//
//  PBDetailWindowController.m
//  Pasto
//
//  Created by Ke Yang on 10/4/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import "PBDetailWindowController.h"

@interface PBDetailWindowController ()

@end

@implementation PBDetailWindowController

@synthesize syntaxCodeArr, syntaxNameArr;

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        syntaxCodeArr = @[];
        syntaxNameArr = @[];
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    [self.syntaxComboBox setDataSource:self];
}

- (NSInteger) numberOfItemsInComboBox:(NSComboBox *)aComboBox
{
    if (aComboBox.tag==self.syntaxComboBox.tag) {
        return [self.syntaxCodeArr count];
    }
    return 0;

}

- (id)comboBox:(NSComboBox *)aComboBox objectValueForItemAtIndex:(NSInteger)index
{
    return [self.syntaxNameArr objectAtIndex:index];
}
- (IBAction)onCancelButton:(id)sender {
}

- (IBAction)onPasteButton:(id)sender {
}
@end
