//
//  XQNavigationController.m
//  Pods
//
//  Created by NaCai on 17/3/29.
//
//

#import "XQNavigationController.h"
#import "XQNavigationViewModel.h"
#import "UIViewController+MVVM.h"

@interface XQNavigationController ()

@end

@implementation XQNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//#pragma mark - Navigation
//-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
//    __kindof id <XQNavigationViewModel> model = self.viewModel;
//    if (model && [model respondsToSelector:@selector(pushViewModel:)]) {
//        [model pushViewModel:viewController.viewModel];
//    }
//    [super pushViewController:viewController animated:animated];
//}
//-(UIViewController *)popViewControllerAnimated:(BOOL)animated{
//    __kindof id <XQNavigationViewModel> model = self.viewModel;
//    if (model && [model respondsToSelector:@selector(popViewModel)]) {
//        [model popViewModel];
//    }
//    return [super popViewControllerAnimated:animated];
//}
//-(NSArray<UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated{
//    __kindof id <XQNavigationViewModel> model = self.viewModel;
//    if (model && [model respondsToSelector:@selector(popToViewModel:)]) {
//        [model popToViewModel:viewController.viewModel];
//    }
//    return [super popToViewController:viewController animated:animated];
//}
//-(NSArray<UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated{
//    __kindof id <XQNavigationViewModel> model = self.viewModel;
//    if (model && [model respondsToSelector:@selector(popToRootViewModel)]) {
//        [model popToRootViewModel];
//    }
//    return [super popToRootViewControllerAnimated:animated];
//}

#pragma mark - Autorotate

-(BOOL)shouldAutorotate{
    return self.topViewController.shouldAutorotate;
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return self.topViewController.supportedInterfaceOrientations;
}
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return self.topViewController.preferredInterfaceOrientationForPresentation;
}

#pragma mark - StatusBarStyle
-(BOOL)prefersStatusBarHidden{
    return self.topViewController.prefersStatusBarHidden;
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return self.topViewController.preferredStatusBarStyle;
}
@end
