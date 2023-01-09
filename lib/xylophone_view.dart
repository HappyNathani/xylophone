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
    "note1.wav",
    "note2.wav",
    "note3.wav",
    "note4.wav",
    "note5.wav",
    "note6.wav",
    "note7.wav",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "XYLOPHONE",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: List.generate(
          colours.length,
          (index) => Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: colours[index],
                ),
              ),
              onTap: () {
                setState(() {
                  AudioPlayer player = AudioPlayer();
                  player.play(
                    AssetSource(
                      audios[index],
                    ),
                  );
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
