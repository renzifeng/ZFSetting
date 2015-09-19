# ZFSetting
每个应用都有设置页面，所以把设置页面封装了一下，可以加快开发效率，简单实用。

### 效果演示：
![image](https://github.com/renzifeng/ZFSetting/raw/master/ZFSetting.gif)

#用法示例
- 用法：直接继承ZFBaseSettingViewController，创建UIViewController的类，实现以下方法就可以实现设置页面的显示。

## 初始化Item
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
```
## cell的设置
```objc
ZFSettingGroup *group = [[ZFSettingGroup alloc] init];
group.header = @"高级设置";
group.footer = @"这是footer";
group.items = @[ help, share , about];
[_allGroups addObject:group];
```
# 期待
- 如果在使用过程中遇到BUG，或发现功能不够用，希望你能Issues我
- 如果觉得好用请Star!
- 谢谢!