# 30-Swift-Practices

给自己立个flag：
从2月29号开始，学习 [@Allen朝辉](http://weibo.com/ttarticle/p/show?id=2309403942494873235448)，30天每天一个Swift Demo。

##01-StopWatch 计时器

####2月29号
今晚本想洗完澡神清气爽地开工，结果拉了三次肚子。洗完澡才拉肚子，这是谁在诅咒我么？！能把 flag 拔了么？犹豫中……
元气大恢复！好歹是把StopWatch给画出来了。代码，明天见！

####3月1号
赶文章，写不了代码。你看现在是什么时间就知道我并没有偷懒~

####3月2号
今天的工作任务主要是写了篇长文，绞尽了脑汁。回家后不知为啥就鬼使神差地点开了卧虎藏龙2，看了一半看不下去了才想起要写代码……也算是set了个counter吧。

####3月3号
完成咯，简单的计时器。等以后学到数据持久化，再完善吧。顺带发现 Allen 的方法比较曲线救国，其实调用按钮的 `.enabled` 属性就好了。

##02-ChineseHoroscope 12生肖

####3月4 & 5号
4号是周五，所以跑去打火锅以及看了 叶问33D 午夜场。自从看过《师父》，对于这种功夫片是再也回不去了，何况威亚吊的还这么明显。

今天完成了 [JakeLin](https://github.com/JakeLin/) 大神的「12生肖」，非常简单的一个demo。发现一个 Swift 2.0 已经不用的语法：

```objc
TextField.text.toInt()
```
Swift 2.0 里已变成了

```objc
if let year : Int = Int(yearTextField.text!){
```
##03-ChoosePartner 相亲神器

####3月6号
完成了 JakeLin 的另一个 demo，熟悉了一些控件的基本用法。更主要的收获是掌握了搜索StackOverFlow的一些窍门，成功找到了另一个Swift 2里 `NSCalendarUnit` 已被废掉的用法。


