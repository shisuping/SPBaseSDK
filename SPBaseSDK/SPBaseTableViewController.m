//
//  SPBaseTableViewController.m
//  WildFireChat
//
//  Created by shisuping on 2022/3/11.
//  Copyright © 2022 WildFireChat. All rights reserved.
//

#import "SPBaseTableViewController.h"
#import "Masonry.h"
#import "SPBaseTableView.h"

@interface SPBaseTableViewController ()

@end

@implementation SPBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.itemArray = [NSMutableArray array];
    
    // Do any additional setup after loading the view.
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero);
    }];
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[SPBaseTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        [self.view addSubview:_tableView];
    }
    return _tableView;
}


@end
