//
//  XQNavigationViewModelProtocol.h
//  Pods
//
//  Created by NaCai on 17/3/29.
//
//

#import <Foundation/Foundation.h>
#import "XQViewModelProtocol.h"

@protocol XQNavigationViewModelProtocol <NSObject>

- (instancetype)initWithRootViewModel:(__kindof id<XQViewModelProtocol>)viewModel;

@property (nullable, nonatomic, strong, readonly) __kindof id<XQViewModelProtocol> topViewModel;

@property (nullable, nonatomic, strong, readonly) __kindof id<XQViewModelProtocol> visibleViewModel;

@property (nonatomic, strong, readonly) NSArray <__kindof id<XQViewModelProtocol>> *viewModels;

@required

-(void)pushViewModel:(__kindof id<XQViewModelProtocol>)viewModel animated:(BOOL)animated;
-(id<XQViewModelProtocol>)popViewModelAnimated:(BOOL)animated;
-(NSArray<__kindof id<XQViewModelProtocol>> *)popToViewModel:(__kindof id<XQViewModelProtocol>)viewModel animated:(BOOL)animated;
-(NSArray<__kindof id<XQViewModelProtocol>> *)popToRootViewModelAnimated:(BOOL)animated;

@optional

@end
