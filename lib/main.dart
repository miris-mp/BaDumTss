import 'package:flutter/material.dart';

import './home/GradientAppBar.dart';
import './home/HomePageBody.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Sounds",
    home: new HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("Auguri Bianca!"),
          new HomePageBody()
        ],
      ),
    );
  }
}
