//
// Created by NaCai on 17/3/2.
//

#import "XQViewController.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import "UIViewController+MVVM.h"
#import "XQViewModel.h"

#define __RESPONDS_TO_SELECTOR(TARGET,ACTION) if (TARGET && [TARGET respondsToSelector:@selector(ACTION)]) {[TARGET ACTION];}

@implementation XQViewController

#pragma mark - Lifecycle methods
- (void)viewDidLoad {
    [super viewDidLoad];
    [self __setup];
    __RESPONDS_TO_SELECTOR(self.viewModel, viewModelDidLoad);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    __RESPONDS_TO_SELECTOR(self.viewModel, viewModelWillAppear);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    __RESPONDS_TO_SELECTOR(self.viewModel, viewModelDidAppear);
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    __RESPONDS_TO_SELECTOR(self.viewModel, viewModelWillDisappear);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    __RESPONDS_TO_SELECTOR(self.viewModel, viewModelDidDisappear);
}

- (void)didReceiveMemoryWarning {
    __RESPONDS_TO_SELECTOR(self.viewModel, didReceiveMemoryWarning);
}

#pragma mark - Private methods
- (void)__setup{
    //这里需要注意执行顺序
    [self initSubviews];
    [self setupSubviews];
    [self bindViewAndViewModel];
}

#pragma mark - Public methods
- (void)initSubviews{}
- (void)setupSubviews{}

- (void)bindViewAndViewModel{
    RAC(self,title) = RACObserve(self.viewModel, title);
}

@end
