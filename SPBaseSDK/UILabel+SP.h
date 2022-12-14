//
//  UILabel+SP.h
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (SP)

+ (UILabel *)kk_LabelText:(NSString *)text
                     font:(UIFont *)font
                textColor:(UIColor *)color
                textAlign:(NSTextAlignment)textAlign;

@end

NS_ASSUME_NONNULL_END
