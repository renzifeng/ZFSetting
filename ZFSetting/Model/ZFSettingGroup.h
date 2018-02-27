//
//  ZFSettingGroup.h
//  ZFSetting
//
//  Created by 任子丰 on 15/9/19.
//  Copyright (c) 2013年 任子丰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZFSettingGroup : NSObject
/// 头部标题
@property (nonatomic, copy) NSString *header;
/// 尾部标题
@property (nonatomic, copy) NSString *footer;
/// 中间的条目
@property (nonatomic, strong) NSArray *items;

@end
