import 'package:flutter/material.dart';
import 'dart:async';

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }
  close() {
    controller.close();

  }
  addError() {
    controller.sink.addError('error');
  }
}
class ColorStream {
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
    Colors.blueAccent,
  ];


  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1),
          (int t) {
        int index = t % colors.length;
        return colors[index];
      },
    );
  }
}
