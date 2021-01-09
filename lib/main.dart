import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "crackzj",
      home: Scaffold(
        appBar: AppBar(
          title: Text("crackzj"),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  final int counter = 0;
  Widget build(BuildContext ctx) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              print("按钮点击了");
            },
            child: Text("计数+1"),
          ),
          Text(
            "当前计数:$counter",
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text("计数+1"),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: Text("计数-1"),
              ),
            ],
          ),
          Text("当前计数:$counter")
        ],
      ),
    );
  }
}
