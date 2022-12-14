//
//  SPBaseTableView.m
//  SPBaseSDK
//
//  Created by shisuping on 2022/3/2.
//

#import "SPBaseTableView.h"

@implementation SPBaseTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    if (self = [super initWithFrame:frame style:style]) {
        
        UIView *view =[ [UIView alloc]init];
        view.backgroundColor = [UIColor clearColor];
        [self setTableFooterView:view];
        
        if (@available(iOS 11.0, *)) {
            self.estimatedRowHeight = 0;
            self.estimatedSectionHeaderHeight = 0;
            self.estimatedSectionFooterHeight = 0;
            self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
        UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, CGFLOAT_MIN)];
        self.tableHeaderView = headerView;
    }
    self.backgroundView = nil;
    self.backgroundColor = [UIColor whiteColor];
    
    return self;
}


@end
