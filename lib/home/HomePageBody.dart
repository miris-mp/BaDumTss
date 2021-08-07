import 'package:bianca/model/Sound.dart';
import 'package:flutter/material.dart';

import './SoundRow.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          return Container(
            child: SoundRow(sound: sounds[index]),
          );
        },
      ),
    );
  }
}
