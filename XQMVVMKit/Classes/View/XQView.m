//
//  XQView.m
//  Pods
//
//  Created by NaCai on 17/4/1.
//
//

#import "XQView.h"
#import "UIView+MVVM.h"

@implementation XQView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self __setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self __setup];
    }

    return self;
}

#pragma mark - Private methods

- (void)__setup{
    [self initSubviews];
    [self setupSubviews];
}

#pragma mark - Public methods

- (void)initSubviews{}
- (void)setupSubviews{}

#pragma mark - Override methods

- (void)didMoveToSuperview {
    [super didMoveToSuperview];
    if (self.superview == nil) {
        if (self.eventBlock) {self.eventBlock = nil;}
    }
}

@end
