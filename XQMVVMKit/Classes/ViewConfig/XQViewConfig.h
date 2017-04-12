//
// Created by NaCai on 17/3/2.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "XQViewConfigProtocol.h"

typedef NS_ENUM(NSInteger,XQViewStyle){
    XQViewStyleCustom, //不包含任何配置
    XQViewStyleNews,
    XQViewStyleFollow
};

@interface XQViewConfig : NSObject <XQViewConfigProtocol>
- (instancetype)init NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithViewStyle:(XQViewStyle)style NS_DESIGNATED_INITIALIZER;
+ (instancetype)configWithViewStyle:(XQViewStyle)style;

- (void)configView:(UIView *)view;
@end
