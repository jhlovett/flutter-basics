import 'package:flutter/material.dart';

void main(){runApp(MyApp());}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: "Welcome to fultter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Flutter"),
        ),
        body: Center(
          child: Text('Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World',
          textAlign: TextAlign.center, /*文本对齐方式*/
          maxLines: 1, //最大行数
          overflow: TextOverflow.fade,
          style: TextStyle(
            fontSize: 25, //字体大小
            color:Color.fromARGB(255, 255, 125, 125), //字体颜色
            decoration: TextDecoration.underline, //下划线
            decorationStyle: TextDecorationStyle.solid, //实线
          ),
          ),//TextOverflow.ellipsis省略号,TextOverflow.clip减掉,TextOverflow.fade：渐变
        ),
      ),
    );
  }
}