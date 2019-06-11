import 'package:flutter/material.dart';

main() => (MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: FractionalOffset(0.5, 0.98),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              "http://img.52z.com/upload/news/image/20181108/20181108204521_83402.jpg"),
          radius: 100.0, //弧度,100.0形成一个正圆
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: const EdgeInsets.all(5.0),
          child: Text('小女子一枚'),
        )
      ],
    );

    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('层叠布局')),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
