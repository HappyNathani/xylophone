import 'package:flutter/material.dart';
import 'package:xylophone/xylophone_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: XylophoneView(),
    );
  }
}
