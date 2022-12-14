//
//  UIViewController+SP.m
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/10.
//

#import "UIViewController+SP.h"

@implementation UIViewController (SP)

- (void)customPresentStyle{
    self.modalPresentationStyle = UIModalPresentationFullScreen;
}

+ (UIViewController *)getCurrentVC
{
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    UIViewController *currentVC = [self getCurrentVCFrom:rootViewController];
    if (currentVC.presentedViewController) {
        return currentVC;
    }
    
    return currentVC;
}
+ (UIViewController *)getCurrentVCFrom:(UIViewController *)rootVC
{
    UIViewController *currentVC;
    
    if ([rootVC presentedViewController]) {
        // 视图是被presented出来的
        rootVC = [rootVC presentedViewController];
    }
    
    if ([rootVC isKindOfClass:[UITabBarController class]]) {
        // 根视图为UITabBarController
        currentVC = [self getCurrentVCFrom:[(UITabBarController *)rootVC selectedViewController]];
    } else if ([rootVC isKindOfClass:[UINavigationController class]]){
        // 根视图为UINavigationController
        currentVC = [self getCurrentVCFrom:[(UINavigationController *)rootVC visibleViewController]];
    } else {
        // 根视图为非导航类
        currentVC = rootVC;
    }
    return currentVC;
}

+ (void)openAppSetting{
    NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
     if ([[UIApplication sharedApplication]canOpenURL:url]) {
         [[UIApplication sharedApplication] openURL:url];
     }
}

@end
