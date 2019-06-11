import 'package:flutter/material.dart';

main()=>(MyApp());


class MyApp extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return MaterialApp(
            title: 'Row Widget Demo',
            home: Scaffold(
                appBar: AppBar(title: Text('水平方向布局')),
                body: Row(
                  children: <Widget>[
                    //不灵活布局:,根据子元素大小排列成一行一个水平方向
                    //灵活布局:会把一行填满，需要使用Expanded组件,页面上三个按钮都加上Expanded会进行平均分配.这里中间的按钮加上Expanded组件,中间按钮会把剩余的空间填满
                    RaisedButton(
                        onPressed:(){}, //点击按钮事件
                        color: Colors.redAccent,
                        child: Text('button'),
                      ), 
                      Expanded(child:RaisedButton(
                        onPressed:(){}, 
                        color: Colors.orangeAccent,
                        child: Text('Orange button'),
                      )),
                      RaisedButton(
                        onPressed:(){}, 
                        color: Colors.blueAccent,
                        child: Text('button'),
                      )
                  ],
                ),
            ),
        );
    }
}