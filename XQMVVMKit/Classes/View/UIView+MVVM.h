//
//  UIView+MVVM.h
//  Pods
//
//  Created by NaCai on 17/4/1.
//
//

#import <UIKit/UIKit.h>

@protocol XQEventProtocol <NSObject>

- (void)view:(__kindof UIView *)view withEventIdentifier:(NSString *)identifier userInfo:(id)userInfo;

@end

@interface UIView (MVVM)

@property(nonatomic, weak) id <XQEventProtocol> eventDelegate;

//如果view继承自XQView，则不用担心循环引用问题；否则必须注意循环引用
@property(nonatomic, copy) void (^eventBlock)(NSString *identifier, id userInfo);

@end

@interface UIView (StyleExtension)

- (void)registerStyle:(NSString *)styleIdentifier withImplementation:(void(^)(__kindof UIView *view))style;

- (void)setupStyleWithIdentifier:(NSString *)styleIdentifier;

@end
