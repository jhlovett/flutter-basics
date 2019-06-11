import 'package:flutter/material.dart';

main() => (MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
          appBar: AppBar(title: Text('垂直方向布局')),
          //Column的宽度默认以最长的组件宽度为准
          body: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("I am KeBao"),
              Expanded(child:Text("My website is KeBao.com"),),
              Text("I like coding")
            ],
          ))),
    );
  }
}

// 主轴和副轴的辨识
// 在设置对齐方式的时候你会发现右mainAxisAlignment属性，意思就是主轴对齐方式，那什么是主轴，什么又是幅轴?。

// main轴：如果你用column组件，那垂直就是主轴，如果你用Row组件，那水平就是主轴。
// cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。比如Row组件，那垂直就是幅轴，Column组件的幅轴就是水平方向的。
