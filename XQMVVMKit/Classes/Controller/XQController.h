//
//  XQController.h
//  Pods
//
//  Created by NaCai on 17/4/12.
//
//

#import <Foundation/Foundation.h>

@class UIView;
@class XQViewModel;

@interface XQController : NSObject

@property (nonatomic, weak, readonly) __kindof UIView *view;
@property (nonatomic, weak, readonly) __kindof XQViewModel *viewModel;

- (void)bindViewAndViewModel NS_REQUIRES_SUPER;

@end
