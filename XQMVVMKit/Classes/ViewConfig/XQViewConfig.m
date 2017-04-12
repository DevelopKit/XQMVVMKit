//
// Created by NaCai on 17/3/2.
//

#import <UIKit/UIKit.h>
#import "XQViewConfig.h"

@interface XQViewConfig()
@property(nonatomic, weak) UIView *view;
@property(nonatomic, assign) XQViewStyle style;
@end
@implementation XQViewConfig

#pragma mark - Init Methods
- (instancetype)initWithViewStyle:(XQViewStyle)style {
    if (self = [super init]) {
        self.style = style;
    }
    return self;
}

- (void)configView:(UIView *)view {
    self.view = view;
    [self addSubviews];
    [self setupViews];
}

- (void)configViewWithModel:(id)model {

}

- (void)addSubviews{

}

- (void)setupViews{
    switch (self.style){
        case XQViewStyleNews:
            break;
        case XQViewStyleFollow:
            break;
        default:
            break;
    }
}
@end
