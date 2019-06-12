import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    title: '页面跳转并返回数据',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面跳转并返回数据'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

//跳转的Button
class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      RaisedButton(
        child: Text('找小姐姐要电话'),
        onPressed: () {
          _navicationToXiaoJiejie(context);
        },
    );
  }

  _navicationToXiaoJiejie(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => XiaoJieJie()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是小姐姐'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('大长腿小姐姐'),
            onPressed: () {
              Navigator.pop(context, '大长腿小姐姐,tel:15088779912');
            },
          ),
          RaisedButton(
            child: Text('小蛮腰小姐姐'),
            onPressed: () {
              Navigator.pop(context, '小蛮腰小姐姐,tel:15066778899');
            },
          ),
        ],
      )),
    );
  }
}
