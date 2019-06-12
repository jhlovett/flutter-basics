import 'package:flutter/material.dart';

//使用插件Awesome Flutter snippets :安装完插件后输入:stlss回车,就能生成基本结构

class Product
{
    //商品标题
    final String title;
    //商品描述
    final String description;

    Product(this.title,this.description);
}


main(){
   runApp(MaterialApp(
      title: '导航参数传递与接收01',
      home: ProductList(
          products:List.generate(20,(i)=>Product("商品 $i","这是一个商品详情,编号为:$i")),
      ),
    ),
  );
}


class ProductList extends StatelessWidget {

  final List<Product> products;

  ProductList({Key key,@required this.products}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('商品列表'),),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(products[index].title),
              onTap: (){ //onTap:代表点击的时候有一个响应事件
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>ProductDetail(product:products[index]),
                  ));
              }, 
            );
          },
        ),
    );
  }
}


class ProductDetail extends StatelessWidget {

  final Product product;

  ProductDetail({Key key,@required this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title: Text('${product.title}'),),
        body: Center(
          child: Text('${product.description}'),
        ),
    );
  }
}