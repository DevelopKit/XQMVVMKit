//
//  XQNavigationController.h
//  Pods
//
//  Created by NaCai on 17/3/29.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XQNavigationController : UINavigationController
/**
 *  @brief 禁用无关函数
 */
+ (instancetype) new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithCoder:(NSCoder *)aDecoder NS_UNAVAILABLE;
- (instancetype)initWithNavigationBarClass:(nullable Class)navigationBarClass
                              toolbarClass:(nullable Class)toolbarClass NS_UNAVAILABLE;
- (instancetype)initWithNibName:(nullable NSString *)nibNameOrNil
                         bundle:(nullable NSBundle *)nibBundleOrNil NS_UNAVAILABLE;
- (instancetype)initWithRootViewController:(UIViewController *)rootViewController NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
