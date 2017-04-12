//
// Created by NaCai on 17/4/11.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class XQViewModel;

@interface UIStoryboard (MVVM)

- (__kindof UIViewController *)instantiateViewControllerWithIdentifier:(NSString *)identifier viewModel:(__kindof XQViewModel *)viewModel;

@end
