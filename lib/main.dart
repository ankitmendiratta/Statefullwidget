import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Hello',
    home: FavourateCity(),
  ));
}

class FavourateCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Favouritecitystate();
  }
}

class _Favouritecitystate extends State<FavourateCity> {
  String namecity = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(children: <Widget>[
            TextField(
              onSubmitted: (String userinput) {
                setState(() {
                  namecity = userinput;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Text('your city is $namecity'))
          ]),
        ));
  }
}
