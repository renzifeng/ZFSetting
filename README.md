# ZFSetting
[![Build Status](https://camo.githubusercontent.com/474a2feaf657f12a6d2f1109a07886ba92fe3d31/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6275696c642d70617373696e672d627269676874677265656e2e737667)](https://camo.githubusercontent.com/474a2feaf657f12a6d2f1109a07886ba92fe3d31/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6275696c642d70617373696e672d627269676874677265656e2e737667)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/ZFSetting.svg)](https://img.shields.io/cocoapods/v/ZFSetting.svg)
[![Build Status](https://camo.githubusercontent.com/c0e82513e10f9760e334cbed2799b3c86adf08d5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c616e67756167652d6f626a632d3537383765352e737667)](https://camo.githubusercontent.com/c0e82513e10f9760e334cbed2799b3c86adf08d5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c616e67756167652d6f626a632d3537383765352e737667)
[![Build Status](https://camo.githubusercontent.com/e7302c620b3589a361fc5503732f3505347205d4/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c6963656e73652d4d49542d627269676874677265656e2e737667)](https://camo.githubusercontent.com/e7302c620b3589a361fc5503732f3505347205d4/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c6963656e73652d4d49542d627269676874677265656e2e737667)

每个应用都有设置页面，所以把设置页面封装了一下，可以加快开发效率，简单实用。

### 效果演示：
![image](https://github.com/renzifeng/ZFSetting/raw/master/ZFSetting.gif)

#Installation with CocoaPods
	pod 'ZFSetting'
	
#How To Use
直接继承ZFBaseSettingViewController，创建UIViewController的类，实现以下方法就可以实现设置页面的显示。

``` objc
__weak typeof(self) weakSelf = self;
// 初始化Item
ZFSettingItem *help = [ZFSettingItem itemWithIcon:@"MoreHelp" title:@"帮助" type:ZFSettingItemTypeArrow];
//cell点击事件的block回调
help.operation = ^{
    UIViewController *helpVC = [[UIViewController alloc] init];
    helpVC.view.backgroundColor = [UIColor grayColor];
    helpVC.title = @"帮助";
    [weakSelf.navigationController pushViewController:helpVC animated:YES];
};
ZFSettingItem *shake = [ZFSettingItem itemWithIcon:@"sound_Effect" title:@"声音提示" type:ZFSettingItemTypeSwitch];
//开关事件
shake.switchBlock = ^(BOOL on) {
    NSLog(@"声音提示%zd",on);
};

```
## cell的设置
```objc
ZFSettingGroup *group = [[ZFSettingGroup alloc] init];
group.header = @"高级设置";
group.footer = @"这是footer";
group.items = @[ help, share , about];
[_allGroups addObject:group];
```
## 有技术问题也可以加我的iOS技术群，互相讨论，群号为：213376937

# 期待
- 如果在使用过程中遇到BUG，或发现功能不够用，希望你能Issues我者微博联系我[@任子丰](https://weibo.com/zifeng1300)
- 如果觉得好用请Star!