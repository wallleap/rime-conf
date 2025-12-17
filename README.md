# 个人 Rime 配置

实现的效果：

- [x] 只保留小鹤双拼  
- [x] 调一个舒适的外观，支持 mac 下暗黑模式
- [x] 只使用 Rime 的中文，英文留给系统输入法（快捷键切换 <kbd>Control</kbd> + <kbd>Space</kbd>）  
- [x] 不需要 emoji，用系统自带的  
- [x] 不需要模糊音，双拼下一般不会打错，有模糊音只会让前面的候选项位被占  
- [x] 加入一些常用的自定义短语文本
- [x] 转换自己的词库并加入
- [x] 加入八股文（语言数据模型），让长句联想更准确
- [ ] 拆字词库，不知道文字的拼音的时候用，例如先按 <kbd>Ctrl</kbd> + <kbd>u</kbd> 再输入单字（搜狗的 u 模式）  
- [x] 添加 `/` 加 `fh` 显示符号之类的操作
- [x] 支持使用 <kbd>【</kbd>/<kbd>】</kbd>、<kbd>Control</kbd> + <kbd>j</kbd>/<kbd>k</kbd> 切换上/下页  
- [x] 支持时间和日期动态输入  
- [x] 支持 uuid 动态输入
- [x] 支持用户自定义学习词库，记录用户输入习惯

## 使用方法

以 mac 为例

下载本仓库

```sh
git clone git@github.com:wallleap/rime-conf.git
```

下载并安装[鼠须管](https://rime.im/download/)

安裝完成之後选择【好】和【退出登录】

![](https://cdn.wallleap.cn/img/pic/illustration/202303092017225.png)

![](https://cdn.wallleap.cn/img/pic/illustration/202303092018828.png)

重新登录之后点击系统设置-键盘，然后在输入法那里点击【编辑】

![](https://cdn.wallleap.cn/img/pic/illustration/202303092020008.png)

点击左下角 `+` 号

![](https://cdn.wallleap.cn/img/pic/illustration/202303092021790.png)

选择简体中文-鼠须管，点击【添加】，点击完成

![](https://cdn.wallleap.cn/img/pic/illustration/202303092021702.png)

使用快捷键 <kbd>⌃</kbd> + <kbd>空格</kbd> 切换输入法为鼠须管，右击菜单栏的图标，点击【用户设定...】，把刚刚下载的文件复制过来（Win 下可以直接选择那个文件夹）

![](https://cdn.wallleap.cn/img/pic/illustration/202303092025267.png)

完成之后右击鼠须管图标，点击【重新部署】，现在就可以直接体验小鹤双拼了

## 选词

除了常规的翻页，还增加了：

- <kbd>⌃</kbd> + <kbd>k</kbd> 上翻页
- <kbd>⌃</kbd> + <kbd>j</kbd> 下翻页

选词除了使用数字和空格之外，可以使用：

- `;` 选择第二个词
- `'` 选择第三个词
- `,` 选择第四个词

## 输入符号

使用 `/help` 查看可以使用的指令

![](https://cdn.wallleap.cn/img/pic/illustration/202303092042302.png)

例如使用 `/py` 可以显示拼音

![](https://cdn.wallleap.cn/img/pic/illustration/202303092044588.png)

## 输入当前时间

直接输入 `time`、`date`、`datetime`、`week`、`month` 即可选择当前时间、日期、日期时间、星期、月份

可以输入 `timestamp` 获取当前时间戳

## 生成 UUID

输入 `uuid` 即可生成一个新的 UUID

## 自定义短语

重命名 `custom_phrase.example.txt` 为 `custom_phrase.txt`，并在里面添加自定义短语

一行一个，格式为 `上屏文字` + `缩写` + `权重`，中间用 `Tab` 键分开，例如：

```
世界地图  sjdt  2
```
