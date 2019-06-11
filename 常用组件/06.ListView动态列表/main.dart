import 'package:flutter/material.dart';

main()=>runApp(MyApp(
    items:new List<String>.generate(1000, (i)=>"Item $i")
    )
  );

class MyApp extends StatelessWidget
{

  final List<String> items;

  MyApp({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(
        title: 'ListView Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('ListView'),
            ),
            body:ListView.builder(
                  itemCount:items.length,
                  itemBuilder:(context,index){
                      return ListTile(
                          title: Text('${items[index]}'),
                      );
                  },
              ),
            )
      );
  }
}


