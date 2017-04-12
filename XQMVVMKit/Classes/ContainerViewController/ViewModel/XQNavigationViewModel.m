//
//  XQNavigationViewModel.m
//  Pods
//
//  Created by NaCai on 17/3/29.
//
//

#import "XQNavigationViewModel.h"
#import <UIKit/UIKit.h>

@interface XQNavigationViewModel()
@property (nonatomic, strong) NSMutableArray *viewModels;

@end

@implementation XQNavigationViewModel
- (instancetype)initWithRootViewModel:(__kindof id <XQViewModelProtocol>)viewModel {
    if (self = [super init]) {

    }
    return self;
}

#pragma mark - lazy methods

- (NSMutableArray *)viewModels {
    if (_viewModels == nil) {
        _viewModels = [NSMutableArray array];
    }
    return _viewModels;
}

#pragma mark - Navigation
-(void)pushViewModel:(__kindof XQViewModel *)viewModel animated:(BOOL)animated{
    [self.viewModels addObject:viewModel];
    if ([self.viewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *controller = (UINavigationController *) self.viewController;
        [controller pushViewController:viewModel.viewController animated:animated];
    }
}
-(XQViewModel *)popViewModelAnimated:(BOOL)animated {
    [self.viewModels removeLastObject];
    if ([self.viewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *controller = (UINavigationController *) self.viewController;
        [controller popViewControllerAnimated:animated];
    }
}
-(NSArray<__kindof XQViewModel *> *)popToViewModel:(__kindof XQViewModel *)viewModel animated:(BOOL)animated{
    [self.viewModels removeObjectsInRange:NSMakeRange([self.viewModels indexOfObject:viewModel]+1, self.viewModels.count-1)];
    if ([self.viewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *controller = (UINavigationController *) self.viewController;
        [controller popToViewController:viewModel.viewController animated:animated];
    }
}
-(NSArray<__kindof XQViewModel *> *)popToRootViewModelAnimated:(BOOL)animated {
    [self.viewModels removeObjectsInRange:NSMakeRange(1, self.viewModels.count-1)];
    if ([self.viewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *controller = (UINavigationController *) self.viewController;
        [controller popToRootViewControllerAnimated:animated];
    }
}

@end
