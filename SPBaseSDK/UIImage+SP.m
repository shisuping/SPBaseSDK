//
//  UIImage+SP.m
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/3.
//

#import "UIImage+SP.h"

@implementation UIImage (SP)
- (UIImage *)sp_templateimage{
    return [self imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
}

@end
