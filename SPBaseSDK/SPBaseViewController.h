//
//  SPBaseViewController.h
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SPBaseViewController : UIViewController

- (void)backButtonPressed;

@property(nonatomic, assign) BOOL useCustomNavBar;

@end

NS_ASSUME_NONNULL_END
