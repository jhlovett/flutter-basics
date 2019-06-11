import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(
        title: 'ListView Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('ListView'),
            ),
            body: ListView(
                children: <Widget>[
                 
                 Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560229622753&di=a963ffc0853c96436b0ebfcf5cff363e&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181209%2F2b32869ecf7a4e1cb32b30adf9f57a08.jpeg"),
                 Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560229622753&di=729a4afdb002bcce31710e8fc119dc09&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20180427%2F8480b1e890c3461e8a5ef737b20bab61.jpeg"),
                 Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560229622752&di=2421f25a26b5721efb29c415fa4f1c43&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20180429%2F43d1a4f2d8b74a5ea6d29d5479541cbf.jpg"),
                 Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560229622752&di=101dcabe8cdc98bb542382c8323d8a3a&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20180414%2F2d088962367b460eb2aa1cf53c024695.jpeg"),
                 

                  
                  // ListTile(
                  //   leading: Icon(Icons.perm_camera_mic),
                  //   title: Text('perm_camera_mic'),
                  // ),
                  // ListTile(
                  //   leading: Icon(Icons.add_call),
                  //   title: Text('add_call'),
                  // ),
                  // ListTile(
                  //   leading: Icon(Icons.access_time),
                  //   title: Text('access_time'),
                  // )
                ],
            )
        ),
      );
  }

}