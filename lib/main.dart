import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "hello world",
    home: Scaffold(
      appBar: AppBar(
        title: Text("我是标题"),
      ),
      body: Center(
          child: Text(
        "hello world",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 20, color: Colors.deepOrange),
      )),
    ),
  ));
}
