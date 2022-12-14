//
//  UILabel+SP.m
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/2.
//

#import "UILabel+SP.h"

@implementation UILabel (SP)
+ (UILabel *)kk_LabelText:(NSString *)text
                     font:(UIFont *)font
                textColor:(UIColor *)color
                textAlign:(NSTextAlignment)textAlign {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = font;
    label.textColor = color;
    label.textAlignment = textAlign;
    return label;
}
@end
