import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("卜夋"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            ProductItem("Apple1", "macbook air 13`",
                "https://cdn.jsdelivr.net/gh/crackzj/blogImg/blog20201223211137.jpeg"),
            ProductItem("Apple2", "macbook pro 13`",
                "https://cdn.jsdelivr.net/gh/crackzj/blogImg/blog20201223211137.jpeg"),
            ProductItem("Apple3", "macbook pro 16`",
                "https://cdn.jsdelivr.net/gh/crackzj/blogImg/blog20201223211137.jpeg")
          ],
        ));
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String content;
  final String url;
  ProductItem(this.title, this.content, this.url);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Text(
            content,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.network(url)
        ],
      ),
    );
  }
}
