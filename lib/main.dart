import 'package:flutter/material.dart';

void main(List<String> args) => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext btx) {
    return MaterialApp(
      title: "Text Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Widget"),
        ),
        body: TextContent(),
      ),
    );
  }
}

class TextContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichTextDemo();
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "《定风波》苏轼\n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
      style: TextStyle(fontSize: 20, color: Colors.orange),
      textAlign: TextAlign.center,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(
      TextSpan(
        children:[
          TextSpan(
            text: "《定风波》",
            style: TextStyle(
              fontSize: 20
            )
          )
        ] 
      )
    );
  }
}
