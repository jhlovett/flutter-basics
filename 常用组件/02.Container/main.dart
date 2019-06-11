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
            child: Text('hello world', style: TextStyle(fontSize: 40.0)),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
           //color: Colors.lightBlue, //使用了渐变就不能使用背景颜色
           //padding: const EdgeInsets.all(10.0), //一个值设置上下左右padding
           padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
           margin: const EdgeInsets.all(10),
           decoration: BoxDecoration(
             gradient: const LinearGradient(
               colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]
             ),
             border: Border.all(width: 2,color: Colors.red)
           ),
          )
        )
      ),
    );
  }
}
