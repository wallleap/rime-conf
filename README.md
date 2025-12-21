# 个人 Rime 配置

实现的效果：

- [x] ~~只保留小鹤双拼方案（通过 `default.custom.yaml` 文件中直接覆盖 `schema_list` 默认配置实现）~~把小鹤双拼放到第一个，保留默认的全拼方案，方便切换
- [x] 调一个舒适的外观，支持 mac 下暗黑模式（`squirrel.custom.yaml`）
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

## 使用小鹤双拼

键位图：

![](https://cdn.wallleap.cn/img/pic/illustration/20251221180944809.png?imageSlim)

常规输入：

- 声母 + 韵母，例如 `n` + `i` 输入 `你`、`u` + `l` 输入 `双`
- 单韵母双击，例如 `a` + `a` 输入 `啊`、`o` + `o` 输入 `哦`
- 双韵母，例如 `a` + `i` 输入 `爱`、`o` + `u` 输入 `欧`
- 复韵母先输入前面的字母 + 后面的韵母按键所在，例如 `a` + `h` 输入 `昂`

字根键位图（推荐就使用简单点的定字的，实在不会就用双拼多翻几页）：

![](https://cdn.wallleap.cn/img/pic/illustration/20251221183856944.png?imageSlim)

双拼 + 辅助码：输入正常拼音后加入某个字的偏旁部首的首字母，例如 `u` + `v` + `y` 输入 `谁`（正常输入 `shui` 之后取言 `yan` 字旁的首字母 `y`）

双拼 + 双形：先输入拼音再根据字形确定文字，例如 `x` + `n` 确定拼音 `xiao` 然后再输入 `l` 丨 + `d` 丶 确定字形，完整输入 `xnld` 确定单字 `小`

> 本方案去除了模糊音（例如 z → zh）和简码（例如键入 q 就能显示 去 等字），即一定要最少键入两个键才能显示具体文字，且不会因为模糊音占用候选项位

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

![](https://cdn.wallleap.cn/img/pic/illustration/20251220145605684.png?imageSlim)

## 生成 UUID

输入 `uuid` 即可生成一个新的 UUID

例如：

```
77eb199a-d493-4198-959c-d32eeeead1f6
```

## 修改方案/切换功能

使用快捷键 <kbd>⌃</kbd> + <kbd>\`</kbd> 或 <kbd>F4</kbd> 快捷键调出方案选择菜单

![](https://cdn.wallleap.cn/img/pic/illustration/20251221230947272.png?imageSlim)

选中并按空格选择切换方案，或者切换某个功能

![](https://cdn.wallleap.cn/img/pic/illustration/20251221225504693.png?imageSlim)

## 自定义短语

复制 `custom_phrase.example.txt` 并重命名为 `custom_phrase.txt`，在里面添加自定义短语

一行一个，格式为 `上屏文字` + `缩写` + `权重`，中间用 `Tab` 键分开，例如：

```
世界地图  sjdt  2
```

输入 `sjdt` 即可显示 `世界地图`

能够输入其他常用的，比如身份证、手机号、邮箱、地址等

## 更新了新的主题

### mac 下

亮色模式

![](https://cdn.wallleap.cn/img/pic/illustration/20251220145106448.png?imageSlim)

暗色模式

![](https://cdn.wallleap.cn/img/pic/illustration/20251220145231695.png?imageSlim)

### win 下

待截图

## 修改配置

可以参考官方仓库文件进行修改定制：

- `default.custom.yaml`：<https://github.com/rime/librime/blob/master/data/minimal/default.yaml>
- `sequirrel.custom.yaml`：<https://github.com/rime/squirrel/blob/master/data/squirrel.yaml>
- `weasel.custom.yaml`：<https://github.com/rime/weasel/blob/master/output/data/weasel.yaml>

## 增加词库

参考 `dicts` 文件夹中的文件格式添加内容/使用工具转换并添加上对应的顶部信息，然后修改 `extended.dict.yaml` 配置，将对应的词库文件名添加进去即可

## 同步用户数据

右击 Rime 图标，点击【同步用户数据】，会自动创建一个 `installation.yaml` 文件

和一个 `sync` 目录，里面会记录用户的自定义词库和学习词库等内容

那么只要把这个 `sync` 目录设置成所有设备都能访问到的即可（例如 iCloud Drive、Dropbox 等云盘同步目录）

修改 `installation.yaml` 文件，添加 `sync_dir` 字段，改成同步目录的路径

```yaml
sync_dir: "/Users/luwang/Library/Mobile Documents/iCloud~com~jimmy54~iRime/Documents/sync"
```

如果是 windows 系统，需要使用 `'` 单引号，或者使用 `\\` 双反斜杠（因为 yaml 文件中 `\` 是转义符，会把后面的字母转义），例如：

```yaml
sync_dir: 'C:\Users\luwang\AppData\...\iCloud Drive\iRime\sync'
```

或

```yaml
sync_dir: "C:\\Users\\luwang\\AppData\\...\\iCloud Drive\\iRime\\sync"
```

## 参考资料

- [Rime 官方文档](https://rime.im/docs/)
- [Rime 官方仓库](https://github.com/rime)
- [小鹤双拼输入法介绍](http://www.flypy.com/)
- [rime-ice](https://github.com/iDvel/rime-ice)
