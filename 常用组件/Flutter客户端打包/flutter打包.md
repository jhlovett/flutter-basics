配置APP的图标
想配置APP的图片，你需要找到下面的目录：

项目根目录/android/app/src/main/res/

进入之后你会看到很多mipmap-为前缀命名的文件夹，后边的是像素密度，可以看出图标的分辨率。

mdpi (中) ~160dpi
hdpi （高） ~240dip
xhdpi （超高） ~320dip
xxhdpi （超超高） ~480dip
xxxhdpi （超超超高） ~640dip
将对应像素密度的图片放入对应的文件夹中,图片记得用png格式，记得名字要统一，才能一次性进行配置。

AndroidManifest.xml 文件
这个文件主要用来配置APP的名称、图标和系统权限，所在的目录在:

项目根目录/android/app/src/main/AndroidManifest.xml
android:label="flutter_app"   //配置APP的名称，支持中文
android:icon="@mipmap/ic_launcher" //APP图标的文件名称

生成 keystore
这里的坑挺多的，小伙伴一定要注意。官方写的非常简单，只要在终端运行如下代码就可以成功,但事实是报错。
keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
报错截图如下：
图片占位

根本找不到这个命令，真的很坑，其实我们只是没有配置环境变量。但是为了一个包配置环境变量是不知道的。
这时候可以用下面的命令找到keytool.exe的位置。
flutter doctor -v
图片占位

使用命令
D:\'Program Files'\Android\'Android Studio'\jre\bin\keytool -genkey -v -keystore D:\key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
图片站位

有了这个key.jks文件后，可以到项目目录下的android文件夹下，创建一个名为key.properties的文件，并打开粘贴下面的代码。
storePassword=<password from previous step>    //输入上一步创建KEY时输入的 密钥库 密码
keyPassword=<password from previous step>    //输入上一步创建KEY时输入的 密钥 密码
keyAlias=key
storeFile=<E:/key.jks>    //key.jks的存放路径

我的文件最后是这样的：
storePassword=123123
keyPassword=123123
keyAlias=key
storeFile=D:/key.jks

这个工作中也不要分享出去哦，这个Key就算生成成功了。

配置key注册
key生成好后，需要在build.gradle文件中进行配置。这个过程其实很简单，就是粘贴复制一些东西，你是不需要知道这些文件的具体用处的。

第一项：
进入项目目录的/android/app/build.gradle文件，在android{这一行前面,加入如下代码：
def keystorePropertiesFile = rootProject.file("key.properties")
def keystoreProperties = new Properties()
keystoreProperties.load(new FileInputStream(keystorePropertiesFile))

把如下代码进行替换
buildTypes {
    release {
        signingConfig signingConfigs.debug
    }
}
替换成的代码：
signingConfigs {
    release {
        keyAlias keystoreProperties['keyAlias']
        keyPassword keystoreProperties['keyPassword']
        storeFile file(keystoreProperties['storeFile'])
        storePassword keystoreProperties['storePassword']
    }
}
buildTypes {
    release {
        signingConfig signingConfigs.release
    }
}


生成apk
直接在终端中输入：
flutter build apk

apk打包文件在下图第二个框框内
图片站位





