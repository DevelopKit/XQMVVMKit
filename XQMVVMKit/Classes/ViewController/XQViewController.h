//
// Created by NaCai on 17/3/2.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XQViewController : UIViewController

- (void)bindViewAndViewModel NS_REQUIRES_SUPER;

//convinence methods to setup subviews
- (void)initSubviews NS_REQUIRES_SUPER;
- (void)setupSubviews NS_REQUIRES_SUPER;

@end
