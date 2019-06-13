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
