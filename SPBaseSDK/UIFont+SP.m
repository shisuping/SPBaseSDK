//
//  UIFont+SP.m
//  ZWTWorkbenchPlatform
//
//  Created by shisuping on 2022/6/9.
//

#import "UIFont+SP.h"

@implementation UIFont (SP)
+ (UIFont *)mediumFontWithSize:(NSInteger)fontSize{
    UIFont *font = [UIFont systemFontOfSize:fontSize];
    if (@available(iOS 8.2, *)) {
        font = [UIFont systemFontOfSize:fontSize weight:UIFontWeightMedium];
    }
    return font;
}
@end
