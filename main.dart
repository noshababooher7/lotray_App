import 'package:flutter/material.dart';
// ignore: unused_import
import "dart:math";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 4;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 193, 202),
      appBar: AppBar(
        title: const Text("Lottary App"),
        backgroundColor: Colors.pinkAccent,
      ),
      //column
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Lottory Winning number is 4",
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          // container
          Container(
            margin: const EdgeInsets.all(10),
            height: x == 4 ? 300 : 250,
            width: 360,
            decoration: BoxDecoration(
                color: x == 4
                    ? const Color(0xFFF2588B)
                    : const Color(0xFF8C8989).withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child:
                // column
                Padding(
              padding: const EdgeInsets.all(15.0),
              child: x == 4
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 55,
                        ),
                        // Text
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Congrulation You have Win the Lottray, your number is $x",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 55,
                        ),
                        // Text
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Better Luck Next Time your number is $x \n Try again",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFEA3974),
        onPressed: () {
          x = random.nextInt(10);
          print(x);
          setState(() {});
        },
        //Icon
        child: const Icon(
          Icons.refresh,
          color: Colors.black,
          size: 35,
        ),
      ),
    ));
  }
}
