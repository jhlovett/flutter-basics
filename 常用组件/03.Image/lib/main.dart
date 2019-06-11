import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to fultter",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Welcome to Flutter"),
          ),
          body: Center(
            child: Container(
                child:Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1556156787&di=0e290b5040e2162b782ac423bd115d81&src=http://b-ssl.duitang.com/uploads/item/201804/20/20180420013120_npqos.jpeg",
                  //图片填充
                  //fit:BoxFit.scaleDown,
                  //图片混合模式
                  //color: Colors.greenAccent,
                  //colorBlendMode:BlendMode.darken,
                  //图片重复
                  repeat:ImageRepeat.repeat ,
                ),
            width: 300.0,
            height: 200.0,
            color: Colors.lightBlue,
          )
        )
      ),
    );
  }
}

/*
BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。

BoxFit.contain:全图显示，显示原比例，可能会有空隙。

BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。

BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切。

BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。

BoxFit.scaleDown：效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。
 */
