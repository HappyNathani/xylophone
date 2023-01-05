import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneView extends StatefulWidget {
  const XylophoneView({super.key});

  @override
  State<XylophoneView> createState() => _XylophoneViewState();
}

class _XylophoneViewState extends State<XylophoneView> {
  List colours = [
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.yellow,
    Colors.purple,
  ];

  List audios = [
    "assets_note1.wav",
    "assets_note2.wav",
    "assets_note3.wav",
    "assets_note4.wav",
    "assets_note5.wav",
    "assets_note6.wav",
    "assets_note7.wav",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          colours.length,
          (index) => Expanded(
            child: ElevatedButton(
              onPressed: () async {
                AudioPlayer player = AudioPlayer();
                await player.play(AssetSource(audios[index]));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: colours[index],
                shape: const RoundedRectangleBorder(),
              ),
              child: Container(),
            ),
          ),
        ),
      ),
    );
  }
}
