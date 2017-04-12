//
// Created by NaCai on 17/3/2.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol XQViewConfigProtocol <NSObject>

- (void)configView:(UIView *)view;
- (void)configViewWithModel:(id)model;

- (void)addSubviews;
- (void)setupViews;

@end