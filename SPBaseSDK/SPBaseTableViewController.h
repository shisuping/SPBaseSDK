//
//  SPBaseTableViewController.h
//  WildFireChat
//
//  Created by shisuping on 2022/3/11.
//  Copyright © 2022 WildFireChat. All rights reserved.
//

#import "SPBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SPBaseTableViewController : SPBaseViewController<UITableViewDelegate,UITableViewDataSource>

/** <#注释#> */
@property(nonatomic, strong) UITableView *tableView;

/** <#注释#> */
@property(nonatomic, strong) NSMutableArray *itemArray;

@end

NS_ASSUME_NONNULL_END
