import 'package:flutter/material.dart';


//在配置文件pubspec.yaml中加入
//  assets:
//    - images/xiaojiejie.png

//images文件夹中放入xiaojiejie.png图片

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset('images/xiaojiejie.png'),
    );
  }
}