import 'package:flutter/material.dart';

void main(List<String> args) => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext btx) {
    return MaterialApp(
      title: "Button Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button Widget"),
        ),
        body: ButtonDemo(),
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          CustomButton(),
          RaisedButton(
            onPressed: () => print("有背景button"),
            child: Text("RaisedButton"),
          ),
          FlatButton(
            onPressed: () => print("Flat button"),
            child: Text("FlatButton"),
          ),
          OutlineButton(
            onPressed: () => print("outline button"),
            child: Text("OutlineButton"),
          ),
          FloatingActionButton(
            onPressed: () => print("floating action Button"),
            child: Text("Flo"),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () => print("custom button"),
      color: Colors.blueGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Text(
        "CustomButton",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
