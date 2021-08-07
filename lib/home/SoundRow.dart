import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import "../model/Sound.dart";

class SoundRow extends StatefulWidget {
  final Sound sound;

  const SoundRow({Key? key, required this.sound}) : super(key: key);

  @override
  _SoundRowState createState() => _SoundRowState();
}

class _SoundRowState extends State<SoundRow> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Ciao");
    print(widget.sound);
    final soundCard = new InkWell(
      child: Container(
        height: 124.0,
        margin: new EdgeInsets.only(left: 46.0),
        decoration: new BoxDecoration(
          color: const Color(0xFFF44336),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Center(
            child: Text(widget.sound.name,
                style: TextStyle(fontSize: 20, color: Colors.white))),
      ),
      onTap: () async {
        await player.setAsset(widget.sound.sound);
        player.play();
      },
    );

    final soundThumbnail = new Container(
        margin: new EdgeInsets.symmetric(vertical: 16.0),
        alignment: FractionalOffset.centerLeft,
        child: GestureDetector(
          onTap: () async {
            await player.setAsset(widget.sound.sound);
            player.play();
          },
          child: new Image(
            image: new AssetImage(widget.sound.img),
            height: 92.0,
            width: 92.0,
          ),
        ));

    return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            soundCard,
            soundThumbnail,
          ],
        ));
  }
}
