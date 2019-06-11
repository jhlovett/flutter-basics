import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              '浙江省金华市金帆街187号',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('张三:13566778899'),
            leading: Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          Divider(), //分割线
          ListTile(
            title: Text(
              '浙江省金华市解放西路877号',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('李四:13677889900'),
            leading: Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          Divider(),
          ListTile(
            title: Text(
              '浙江省金华市人民东路187号',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('王五:18766999912'),
            leading: Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          Divider(),
        ],
      ),
    );

    return MaterialApp(
      title: '卡片布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('卡片布局'),
        ),
        body: Center(
          child: card,
      ),
      ),
    );
  }
}
