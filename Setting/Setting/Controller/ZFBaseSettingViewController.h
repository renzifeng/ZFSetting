//
//  ZFBaseSettingViewController.h
//  ZFSetting
//
//  Created by 任子丰 on 15/9/19.
//  Copyright (c) 2013年 任子丰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZFSettingGroup.h"
#import "ZFSettingItem.h"

@interface ZFBaseSettingViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *_allGroups; // 所有的组模型
}
@end
