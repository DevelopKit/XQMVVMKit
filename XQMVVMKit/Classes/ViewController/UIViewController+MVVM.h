//
//  UIViewController+MVVM.h
//  Pods
//
//  Created by NaCai on 17/3/29.
//
//

#import <UIKit/UIKit.h>

@class XQViewModel;

@interface UIViewController (MVVM)

@property (nonatomic, strong) __kindof XQViewModel * viewModel;

- (instancetype)initWithViewModel:(__kindof XQViewModel *)viewModel;

@end
