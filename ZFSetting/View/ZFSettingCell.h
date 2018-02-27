//
//  ZFSettingCell.h
//  ZFSetting
//
//  Created by 任子丰 on 15/9/19.
//  Copyright (c) 2013年 任子丰. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZFSettingItem;
@interface ZFSettingCell : UITableViewCell

@property (nonatomic, strong) ZFSettingItem *item;

+ (instancetype)settingCellWithTableView:(UITableView *)tableView;

@end
