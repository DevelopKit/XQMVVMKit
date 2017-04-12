//
//  UIView+MVVM.m
//  Pods
//
//  Created by NaCai on 17/4/1.
//
//

#import "UIView+MVVM.h"
#import <objc/runtime.h>

@implementation UIView (MVVM)

#pragma mark - Properties

- (void)setEventDelegate:(id <XQEventProtocol>)eventDelegate {
    objc_setAssociatedObject(self, _cmd, eventDelegate, OBJC_ASSOCIATION_ASSIGN);
}

- (id <XQEventProtocol>)eventDelegate {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setEventBlock:(void (^)(NSString *, id))eventBlock {
    objc_setAssociatedObject(self, _cmd, eventBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(NSString *, id))eventBlock {
    return objc_getAssociatedObject(self, _cmd);
}

@end

@interface UIView (_addStyle)
@property(nonatomic, strong) NSDictionary <NSString *,void(^)(__kindof UIView *)> *interfaceStyles;
@end

@implementation UIView (_addStyle)
-(void)setInterfaceStyles:(NSDictionary<NSString *,void (^)(__kindof UIView *)> *)interfaceStyles{
    objc_setAssociatedObject(self, _cmd, interfaceStyles, OBJC_ASSOCIATION_COPY);
}
-(NSDictionary<NSString *,void (^)(UIView *)> *)interfaceStyles{
    return objc_getAssociatedObject(self, _cmd);
}
@end

@implementation UIView (StyleExtension)

- (void)registerStyle:(NSString *)styleIdentifier withImplementation:(void (^)(__kindof UIView *view))style {
    NSParameterAssert(styleIdentifier != nil && style != nil);
    if (self.interfaceStyles== nil) { self.interfaceStyles = [NSDictionary dictionary];}
    [self.interfaceStyles setValue:[style copy] forKey:styleIdentifier];
}

- (void)styleWithIdentifier:(NSString *)styleIdentifier {
    NSParameterAssert(styleIdentifier != nil);
    NSParameterAssert(self.interfaceStyles[styleIdentifier] != nil);
    self.interfaceStyles[styleIdentifier](self);
}

@end
