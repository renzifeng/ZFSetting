//
//  ZFSettingself.m
//  ZFSetting
//
//  Created by 任子丰 on 15/9/19.
//  Copyright (c) 2013年 任子丰. All rights reserved.
//

#import "ZFSettingCell.h"
#import "ZFSettingItem.h"

@interface ZFSettingCell() {
    UISwitch *_switch;
}
@end

@implementation ZFSettingCell

+ (instancetype)settingCellWithTableView:(UITableView *)tableView {
    // 0.用static修饰的局部变量，只会初始化一次
    static NSString *ID = @"Cell";
    
    // 1.拿到一个标识先去缓存池中查找对应的Cell
    ZFSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    // 2.如果缓存池中没有，才需要传入一个标识创建新的Cell
    if (!cell) {
        cell = [[ZFSettingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    return cell;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setItem:(ZFSettingItem *)item {
    _item = item;
    // 设置数据
    self.imageView.image = item.icon.length ? [UIImage imageNamed:item.icon] : nil;
    self.textLabel.text = item.title;
    if (item.type == ZFSettingItemTypeSwitch) {
        if (_switch == nil) {
            _switch = [[UISwitch alloc] init];
            _switch.on = item.switchOn;
            [_switch addTarget:self action:@selector(switchStatusChanged:) forControlEvents:UIControlEventValueChanged];
        } else {
            [_switch setOn:item.switchOn animated:YES];
        }
        // 右边显示开关
        self.accessoryView = _switch;
        // 禁止选中
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    } else {
        self.accessoryView = nil;
        self.accessoryType = item.type == ZFSettingItemTypeArrow ?
        UITableViewCellAccessoryDisclosureIndicator : UITableViewCellAccessoryNone;
        // 用默认的选中样式
        self.selectionStyle = UITableViewCellSelectionStyleBlue;
    }
}

#pragma mark - SwitchValueChanged

- (void)switchStatusChanged:(UISwitch *)sender {
    if (self.item.switchBlock) {
        self.item.switchBlock(sender.on);
    }
}
@end
