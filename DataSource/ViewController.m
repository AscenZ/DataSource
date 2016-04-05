//
//  ViewController.m
//  DataSource
//
//  Created by lightman on 16/4/5.
//  Copyright © 2016年 YCTime. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"
#import "TestModel.h"
#import "TestModelCell.h"
#import "TestModelCell+SetName.h"
#import "ReturnModel.h"
#import "AppDelegate.h"

@interface ViewController ()

@property(nonatomic,strong) UITableView *tableView;

@property(nonatomic,strong) ArrayDataSource *dataSource;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStyleGrouped];
    
    
    
    
    NSArray *arr = [AppDelegate sharedDelegate].returnModel.returnData;
    
    TableViewCellPassBlock passBlock = ^(TestModelCell *cell,TestModel *model){
        [cell setName:model];
    };
    self.dataSource = [[ArrayDataSource alloc] initWithItems:arr cellIdentifier:@"TestModelCell" passBlock:passBlock];
    
    [self.dataSource setSectionTitle:@[@"第一组",@"第二组"]];
    
    self.tableView.dataSource = self.dataSource;
    
    
    [self.tableView registerNib:[TestModelCell nib] forCellReuseIdentifier:@"TestModelCell"];
    
    
    
    [self.view addSubview:self.tableView];
    
}
@end
