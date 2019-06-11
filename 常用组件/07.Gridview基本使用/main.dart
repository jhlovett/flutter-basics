import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(
        title: 'Gridview Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('ListView'),
            ),
            body:GridView.count(
              padding: const EdgeInsets.all(20.0),
              crossAxisSpacing: 10.0,  //网格的间距
              crossAxisCount: 3,  //每一行显示多少列
              children: <Widget>[   //每个网格里装的东西 
                  const Text('I am jesse!'),
                  const Text('I am lily!'),
                  const Text('I am hanmeimei!'),
                  const Text('I am jack!'),
                  const Text('I am lady!'),
                  const Text('I am lilei!'),
              ],
            ),
            )
      );
  }


}


