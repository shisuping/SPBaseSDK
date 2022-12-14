//
//  SPBaseViewController.m
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/2.
//

#import "SPBaseViewController.h"
//#import "IconFont.h"
//#import "ZWTKitColorConfig.h"

@interface SPBaseViewController ()

@end

@implementation SPBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
//    self.view.backgroundColor = ZWTColorViewBg;//[UIColor whiteColor];
//
//    UIImage *image = [IconFont imageWithIcon:@"nav_ic_back" imageSize:(CGSize){22,22} fontSize:22 tintColor:ZWTColorNavTitle];
//    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(backButtonPressed)];
//    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
}



- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    self.displayTopLineView = YES;
    if (self.useCustomNavBar) {
        [self.navigationController setNavigationBarHidden:YES];
    }
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    if (self.useCustomNavBar) {
        [self.navigationController setNavigationBarHidden:NO];
    }
}

- (void)backButtonPressed{
    if (self.presentingViewController){
        [self dismissViewControllerAnimated:YES completion:^{
            
        }];
    }else{
        [self.navigationController popViewControllerAnimated:true];
    }
}
#pragma mark - iOS6.0 and later
- (BOOL)shouldAutorotate
{
    return NO;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

@end
