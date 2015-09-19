//
//  ZFSettingItem.m
//  ZFSetting
//
//  Created by 任子丰 on 15/9/19.
//  Copyright (c) 2013年 任子丰. All rights reserved.
//

#import "ZFSettingItem.h"

@implementation ZFSettingItem
+ (id)itemWithIcon:(NSString *)icon title:(NSString *)title type:(ZFSettingItemType)type
{
    ZFSettingItem *item = [[self alloc] init];
    item.icon = icon;
    item.title = title;
    item.type = type;
    return item;
}
@end
