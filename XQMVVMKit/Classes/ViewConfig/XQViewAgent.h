//
//  XQViewAgent.h
//  Pods
//
//  Created by NaCai on 17/4/1.
//
//

@class UIView,NSString;

@interface XQViewAgent : NSObject

@property(nonatomic, assign, readonly) __kindof UIView *view;

- (instancetype)initWithView:(__kindof UIView *)view eventBlock:(void (^)(NSString *identifer, id userInfo))eventBlock NS_DESIGNATED_INITIALIZER;
+ (instancetype)agentWithView:(__kindof UIView *)view eventBlock:(void (^)(NSString *identifer, id userInfo))eventBlock;

- (void)setupViewWithModel:(id)model NS_REQUIRES_SUPER;

@end