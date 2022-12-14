//
//  UITableViewCell+SP.m
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/2.
//

#import "UITableViewCell+SP.h"

@implementation UITableViewCell (SP)

- (UIViewController *)viewController{
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

@end
