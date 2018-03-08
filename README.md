# Person
方法命名与内存管理语义的关系,以及performSelector方法的注意事项.


**Person类的实现**
![Person](http://upload-images.jianshu.io/upload_images/1198135-bd298b7090da33c9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

**不同的方式调用**
- 是否在自动释放池中
- 是否使用performSelector:方法

![main](http://upload-images.jianshu.io/upload_images/1198135-4148fa0daa38f9ac.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
