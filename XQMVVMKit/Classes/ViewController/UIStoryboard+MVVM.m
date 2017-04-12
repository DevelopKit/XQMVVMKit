//
// Created by NaCai on 17/4/11.
//

#import "UIStoryboard+MVVM.h"
#import "UIViewController+MVVM.h"

@implementation UIStoryboard (MVVM)

- (__kindof UIViewController *)instantiateViewControllerWithIdentifier:(NSString *)identifier viewModel:(__kindof XQViewModel *)viewModel {
    UIViewController *viewController = [self instantiateViewControllerWithIdentifier:identifier];
    viewController.viewModel = viewModel;
    return viewController;
}

@end
