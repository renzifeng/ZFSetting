//
//  ZFBaseSettingViewController.m
//  ZFSetting
//
//  Created by 任子丰 on 15/9/19.
//  Copyright (c) 2013年 任子丰. All rights reserved.
//

#import "ZFBaseSettingViewController.h"
#import "ZFSettingCell.h"

@interface ZFBaseSettingViewController ()

@end

@implementation ZFBaseSettingViewController

- (void)loadView
{
    UITableView *tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    self.view = tableView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _allGroups = [NSMutableArray array];
    
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _allGroups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    ZFSettingGroup *group = _allGroups[section];
    return group.items.count;
}

#pragma mark 每当有一个cell进入视野范围内就会调用，返回当前这行显示的cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 1.创建一个ZFSettingCell
    ZFSettingCell *cell = [ZFSettingCell settingCellWithTableView:tableView];
    
    // 2.取出这行对应的模型（ZFSettingItem）
    ZFSettingGroup *group = _allGroups[indexPath.section];
    cell.item = group.items[indexPath.row];
    __block ZFSettingCell *weakCell = cell;
    cell.switchChangeBlock = ^ (BOOL on){
        if (weakCell.item.switchBlock) {
            weakCell.item.switchBlock(on);
        }
    };

    return cell;
}

#pragma mark 点击了cell后的操作
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 0.取出这行对应的模型
    ZFSettingGroup *group = _allGroups[indexPath.section];
    ZFSettingItem *item = group.items[indexPath.row];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    // 1.取出这行对应模型中的block代码
    if (item.operation) {
        // 执行block
        item.operation();
    }
}

#pragma mark 返回每一组的header标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    ZFSettingGroup *group = _allGroups[section];
    
    return group.header;
}
#pragma mark 返回每一组的footer标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    ZFSettingGroup *group = _allGroups[section];
    
    return group.footer;
}

@end
