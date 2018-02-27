//
//  ZFSettingItem.h
//  ZFSetting
//
//  Created by 任子丰 on 15/9/19.
//  Copyright (c) 2013年 任子丰. All rights reserved.
//  一个Item对应一个Cell
// 用来描述当前cell里面显示的内容，描述点击cell后做什么事情

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ZFSettingItemType) {
    ZFSettingItemTypeNone, // 什么也没有
    ZFSettingItemTypeArrow, // 箭头
    ZFSettingItemTypeSwitch // 开关
};

@interface ZFSettingItem : NSObject
/// 图标
@property (nonatomic, copy) NSString *icon;
/// 标题
@property (nonatomic, copy) NSString *title;
/// 设置开关
@property (nonatomic, assign, getter=isSwitchOn) BOOL switchOn;
/// cell的样式
@property (nonatomic, assign) ZFSettingItemType type;
/// cell上开关的操作事件
@property (nonatomic, copy) void (^switchBlock)(BOOL on);
/// 点击cell后要执行的操作
@property (nonatomic, copy) void (^operation)();

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title type:(ZFSettingItemType)type;

@end
