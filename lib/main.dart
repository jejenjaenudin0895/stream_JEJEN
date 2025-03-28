import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream JEJEN',
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
        ),
      ),
      home: const StreamHomePage(),
    );
  }
}


class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});



  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
late StreamTransformer transformer;
late StreamSubscription subscription;

  Color bgColor = Colors.blueGrey;
    late ColorStream colorStream;

void stopStream(){
  numberStreamController.close();
}

  void changeColor() async {

    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;

      });
    });
    /*
    await for (var eventColor in colorStream.getColors()) {
      setState(() {
        bgColor = eventColor;
      });
    }

     */
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;

      });
    }

 // numberStream.addError();
  }



  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;

      subscription = stream.listen((event) {
        setState(() {
          lastNumber = event;
        });
    });
    /*
    transformer = StreamTransformer<int, int>.fromHandlers(
    handleData: (value, sink) {
      sink.add (value * 10);
    },
        handleError: (error, trace, sink){
      sink.add(-1);

        },
    handleDone: (sink) => sink.close());



    stream
        .transform(transformer)
        .listen(
            (event){
      setState(() {
        lastNumber = event;
      });
    }).onError((error){
      setState(() {
        lastNumber = -1;
      });
    });
*/
    super.initState();

   //colorStream = ColorStream();
    //hangeColor();

    subscription.onError((error){
      setState(() {
        lastNumber = -1;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream jeJEN'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lastNumber.toString()),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: Text('New Random Number'),
            ),

            ElevatedButton(
              onPressed: () => stopStream(),
              child: const Text('Stop Subcreption'),
            )
          ],
        ),
        //decoration: BoxDecoration(color: bgColor),
      ));
  }
@override
dispose() {
  subscription.cancel();
  super.dispose();
}

int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;


}


