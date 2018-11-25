import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = "First App";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: new AppBody(title: title),
    );
  }
}

class AppBody extends StatelessWidget {
  String title;

  AppBody({this.title});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(centerTitle: true, title: Text(this.title)),
        body: new ScaffoldBody());
  }
}

class ScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text.rich(new TextSpan(
                style: TextStyle(color: Colors.blueGrey, fontSize: 48),
                text: "Hello World")),
            new RaisedButton(
                onPressed: () {
                  Scaffold.of(context).showSnackBar(new SnackBar(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text("sup ?"),
                        ],
                      )));
                },
                child: new Text("Press Me"))
          ],
        ),
      ),
    );
  }
}
