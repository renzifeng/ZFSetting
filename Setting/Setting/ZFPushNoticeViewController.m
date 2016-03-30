//
//  ZFPushNoticeViewController.m
//  ZFSetting
//
//  Created by 任子丰 on 15/9/19.
//  Copyright (c) 2013年 任子丰. All rights reserved.
//

#import "ZFPushNoticeViewController.h"

@interface ZFPushNoticeViewController ()

@end

@implementation ZFPushNoticeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"新消息通知";
    
    // 1.1
    ZFSettingItem *item1 = [ZFSettingItem itemWithIcon:nil title:@"接收新消息通知" type:ZFSettingItemTypeNone];
    //开关事件
    item1.switchBlock = ^(BOOL on) {
        NSLog(@"接收新消息通知%zd",on);
    };
    
    // 1.2
    ZFSettingItem *item2 = [ZFSettingItem itemWithIcon:nil title:@"通知显示消息详情" type:ZFSettingItemTypeSwitch];
    item2.switchBlock = ^(BOOL on) {
        NSLog(@"通知显示消息详情%zd",on);
    };
    
    // 1.3
    ZFSettingItem *item3 = [ZFSettingItem itemWithIcon:nil title:@"功能消息免打扰" type:ZFSettingItemTypeArrow];
    item3.switchBlock = ^(BOOL on) {
        NSLog(@"功能消息免打扰%zd",on);
    };
    
    // 1.4
    ZFSettingItem *item4 = [ZFSettingItem itemWithIcon:nil title:@"声音" type:ZFSettingItemTypeSwitch];
    item4.switchBlock = ^(BOOL on) {
        NSLog(@"声音%zd",on);
    };
    
    // 1.5
    ZFSettingItem *item5 = [ZFSettingItem itemWithIcon:nil title:@"振动" type:ZFSettingItemTypeSwitch];
    item5.switchBlock = ^(BOOL on) {
        NSLog(@"振动%zd",on);
    };
    
    // 1.6
    ZFSettingItem *item6 = [ZFSettingItem itemWithIcon:nil title:@"朋友圈照片更新" type:ZFSettingItemTypeSwitch];
    item6.switchBlock = ^(BOOL on) {
        NSLog(@"朋友圈照片更新%zd",on);
    };
    
    ZFSettingGroup *group1 = [[ZFSettingGroup alloc] init];
    group1.items = @[item1];
    group1.footer = @"如果你要关闭或者开启微信的新消息通知，请在iPhone的“设置”-“通知”功能中，找到应用程序“XX”更改";
    [_allGroups addObject:group1];
    
    ZFSettingGroup *group2 = [[ZFSettingGroup alloc] init];
    group2.items = @[item2];
    group2.footer = @"关闭后，当收到微信呢消息时，通知提示将不显示发现人和内容摘要";
    [_allGroups addObject:group2];
    
    ZFSettingGroup *group3 = [[ZFSettingGroup alloc] init];
    group3.items = @[item3];
    group3.footer = @"设置系统功能消息提示声音和振动的时段";
    [_allGroups addObject:group3];
    
    ZFSettingGroup *group4 = [[ZFSettingGroup alloc] init];
    group4.items = @[item4,item5];
    group4.footer = @"当XX运行时，你可以设置是否需要声音或振动";
    [_allGroups addObject:group4];
    
    ZFSettingGroup *group5 = [[ZFSettingGroup alloc] init];
    group5.items = @[item6];
    group5.footer = @"关闭后，有朋友更新照片时，界面将不会出现提示";
    [_allGroups addObject:group5];
    
}

@end
