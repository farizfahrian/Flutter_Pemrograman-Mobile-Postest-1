import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Postest 1 Fariz Fahrian",
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  @override
  var orientation, size, height, width;
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
          title: const Text("Postest 1 Fariz Fahrian"),
          backgroundColor: Colors.deepPurple),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff274B74),
              Color(0xff8233C5),
              Color(0xffE963FD),
              // Colors.deepPurple,
              // Colors.purple,
            ],
          ),
        ),
        height: height,
        width: width,
        child: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              color: Color.fromARGB(255, 248, 199, 255),
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
