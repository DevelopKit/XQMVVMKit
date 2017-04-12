//
//  XQViewAgent.m
//  Pods
//
//  Created by NaCai on 17/4/1.
//
//

#import <UIKit/UIKit.h>
#import "XQViewAgent.h"
#import "UIView+MVVM.h"

@implementation XQViewAgent

#pragma mark - Init methods

- (instancetype)initWithView:(__kindof UIView *)view eventBlock:(void (^)(NSString *identifer, id userInfo))eventBlock {
    NSParameterAssert(view != nil);
    if (self = [super init]) {
        _view = view;
        _view.eventBlock = [eventBlock copy];
    }
    return self;
}

+ (instancetype)agentWithView:(__kindof UIView *)view eventBlock:(void (^)(NSString *identifer, id userInfo))eventBlock {
    return [[self alloc] initWithView:view eventBlock:eventBlock];
}

#pragma mark - Public methods

- (void)setupViewWithModel:(id)model {
    if (model == nil) {return;}
}

@end