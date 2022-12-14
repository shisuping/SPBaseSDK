//
//  UIView+SPFrame.h
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (SPFrame)
// @property在分类里面只会自动生成get,set方法，并不会生成下划线的成员属性
@property (nonatomic, assign) CGFloat width;

@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGFloat x;

@property (nonatomic, assign) CGFloat y;

@property(assign,nonatomic)CGFloat centerX;

@property(assign,nonatomic)CGFloat centerY;

@property (nonatomic) CGFloat left;

@property (nonatomic) CGFloat top;

@property (nonatomic) CGFloat right;

@property (nonatomic) CGFloat bottom;

/** <#属性#> */
@property(nonatomic, assign) CGSize size;
@end

NS_ASSUME_NONNULL_END
