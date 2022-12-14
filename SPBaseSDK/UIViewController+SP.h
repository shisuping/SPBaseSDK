//
//  UIViewController+SP.h
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (SP)

- (void)customPresentStyle;

+ (UIViewController *)getCurrentVC;

+ (void)openAppSetting;
@end

NS_ASSUME_NONNULL_END
