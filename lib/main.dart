import 'package:flutter/material.dart';

import './home/GradientAppBar.dart';
import './home/HomePageBody.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(new MaterialApp(
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
          new GradientAppBar("Finalmente"),
          new HomePageBody()
        ],
      ),
    );
  }
}
