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
              title: Text('时光网'),
            ),
            body:GridView(   //之前版本的Gridview写法
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, //设置一行几列
                mainAxisSpacing: 2.0,  //行间距
                crossAxisSpacing: 2.0,  //列间距
                childAspectRatio: 0.7  //缩放比例,宽、高比例.(值2.0:宽比高大2倍,值:0.7相当于宽高比:3:4)
              ),
              children: <Widget>[
                  Image.network("http://img5.mtime.cn/mt/2019/05/09/212512.62781081_180X260X4.jpg",fit:BoxFit.cover),
                  Image.network("http://img5.mtime.cn/mt/2019/06/05/113913.77273022_180X260X4.jpg",fit:BoxFit.cover),
                  Image.network("http://img5.mtime.cn/mt/2019/05/27/161752.30751655_180X260X4.jpg",fit:BoxFit.cover),
                  Image.network("http://img5.mtime.cn/mt/2019/05/21/103425.73457018_180X260X4.jpg",fit:BoxFit.cover),
                  Image.network("http://img5.mtime.cn/mt/2019/05/23/095633.44711442_180X260X4.jpg",fit:BoxFit.cover),
                  Image.network("http://img5.mtime.cn/mt/2019/05/20/092152.85702867_180X260X4.jpg",fit:BoxFit.cover),
                  Image.network("http://img5.mtime.cn/mt/2019/06/04/093057.79088785_180X260X4.jpg",fit:BoxFit.cover),
                  Image.network("http://img5.mtime.cn/mt/2019/04/19/101038.59732288_180X260X4.jpg",fit:BoxFit.cover),
                  Image.network("http://img5.mtime.cn/mt/2019/05/23/100122.75784746_180X260X4.jpg",fit:BoxFit.cover),
              ],
              padding:const EdgeInsets.all(2.2),
            )
            )
      );
  }


}


