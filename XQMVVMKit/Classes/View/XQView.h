//
//  XQView.h
//  Pods
//
//  Created by NaCai on 17/4/1.
//
//

#import <UIKit/UIKit.h>

@interface XQView : UIView

@property (nonatomic, strong) NSObject *viewConfig;

- (void)initSubviews NS_REQUIRES_SUPER;
- (void)setupSubviews NS_REQUIRES_SUPER;

@end
