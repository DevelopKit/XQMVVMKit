//
//  UIViewController+MVVM.m
//  Pods
//
//  Created by NaCai on 17/3/29.
//
//

#import <objc/runtime.h>
#import "UIViewController+MVVM.h"

@implementation UIViewController (MVVM)

- (instancetype)initWithViewModel:(__kindof XQViewModel *)viewModel {
    if (self = [self initWithNibName:nil bundle:nil]) {
        self.viewModel = viewModel;
    }
}

- (void)setViewModel:(id)viewModel {
    objc_setAssociatedObject(self, _cmd, viewModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)viewModel {
    return objc_getAssociatedObject(self, _cmd);
}

@end
