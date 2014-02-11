#import "BackgroundView.h"
#import "StatusItemView.h"
#import <AFNetworking/AFHTTPRequestOperationManager.h>
#import "PBHelper.h"
#import "PBHTMLSerializer.h"

@class PanelController;

@protocol PanelControllerDelegate <NSObject>

@optional

- (StatusItemView *)statusItemViewForPanelController:(PanelController *)controller;

@end

#pragma mark -

@interface PanelController : NSWindowController <NSWindowDelegate>
{
    BOOL _hasActivePanel;
    __unsafe_unretained BackgroundView *_backgroundView;
    __unsafe_unretained id<PanelControllerDelegate> _delegate;
    __unsafe_unretained NSSearchField *_searchField;
    __unsafe_unretained NSTextField *_textField;
}

@property (nonatomic, unsafe_unretained) IBOutlet BackgroundView *backgroundView;
@property (nonatomic, unsafe_unretained) IBOutlet NSSearchField *searchField;
@property (nonatomic, unsafe_unretained) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSTextField *codeTextField;
@property (weak) IBOutlet NSProgressIndicator *loadingIndicator;
@property (weak) IBOutlet NSTextField *resultTextField;
@property (weak) IBOutlet NSTextField *versionLabel;
- (IBAction)onButton:(id)sender;
- (IBAction)onCopyButton:(id)sender;
- (IBAction)onPrefButton:(id)sender;
- (IBAction)onDetailButton:(id)sender;


@property (nonatomic) BOOL hasActivePanel;
@property BOOL isPrefButtonPressed, isDetailButtonPressed;
@property (nonatomic, unsafe_unretained, readonly) id<PanelControllerDelegate> delegate;
@property BOOL loadingIndicatorRunning;

- (id)initWithDelegate:(id<PanelControllerDelegate>)delegate;

- (void)openPanel;
- (void)closePanel;

@end
