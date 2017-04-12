//
//  XQMVVMViewModel.h
//  Pods
//
//  Created by NaCai on 17/3/2.
//
//

#import "RVMViewModel.h"

@interface XQViewModel : RVMViewModel

-(void) viewModelDidLoad NS_REQUIRES_SUPER;
-(void) viewModelWillAppear NS_REQUIRES_SUPER;
-(void) viewModelDidAppear NS_REQUIRES_SUPER;
-(void) viewModelWillDisappear NS_REQUIRES_SUPER;
-(void) viewModelDidDisappear NS_REQUIRES_SUPER;
-(void) didReceiveMemoryWarning NS_REQUIRES_SUPER;

/**
 UIViewController的属性,通过这些属性，可以很方便的配置UIViewController的相关信息
 */
@property (nullable ,nonatomic, copy) NSString *title;
@property (nullable ,nonatomic, copy) NSString *tabBarItemTitle;
@property (nullable ,nonatomic, strong) UIImage *tabBarItemImage;
@property (nullable ,nonatomic, strong) UIImage *tabBarItemSelectedImage;

@end
