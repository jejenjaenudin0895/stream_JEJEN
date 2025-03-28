import 'package:flutter/material.dart';

class ColorStream{
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.tealAccent,
    Colors.white,
    Colors.brown,
    Colors.blueAccent
  ];

  Stream<Colors> getColors() async* {
    yield* Stream.periodic(
        const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });

  }
}