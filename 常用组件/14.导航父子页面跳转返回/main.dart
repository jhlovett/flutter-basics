import 'package:flutter/material.dart';

main(){
  runApp(new MaterialApp(
     title: '导航', 
     home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
      return Scaffold(
        appBar: AppBar(title: Text('导航演示01')),
        body: Center(
            child: RaisedButton(
              child: Text('查看商品详情页'),
              onPressed:(){
                  Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>SecondScreen()
                  ));
              },
            ),
        ),
      );
    }
}



class SecondScreen extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
      return MaterialApp(
          title: '商品详情页',
          home: Scaffold(
              appBar: AppBar(title: Text('商品详情页'),),
              body: Center(
                child: RaisedButton(
                  child: Text('返回'),
                  onPressed: (){
                      Navigator.pop(context);
                  },
                ),
              ),
          ),
      );
    }
}