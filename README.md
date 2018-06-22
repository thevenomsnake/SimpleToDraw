#  前言

* 简单了解了一下UIViewController生命周期，UITableView基本使用（还未深入了解）
* 我使用了如下的办法来实现主视图。利用了navigation的返回

![主视图](/Users/tushujian/Desktop/CFC/萌混过关/主视图.png)

##  内存释放问题解决历程：

首先我从文档中查询到可以调用removeFromSuperView来释放内存，把view移除，我以为解决了问题，但是我在内存里面发现view仍然存在。然后又慢慢找，发现view还持有对象。

**突然想到，既然有viewDidDisappear**，那可不可以直接就把他给nil掉，代码如下：

```Swift
 override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
        self.drawView = nil;
    }
```

然后测试过后![内存测试](/Users/tushujian/Desktop/CFC/萌混过关/内存测试.png)

这样应该算解决大部分问题了吧。。。。

#  后记

放假再深入了解吧呜呜呜![呜呜呜](/Users/tushujian/Desktop/CFC/萌混过关/呜呜呜.jpg)