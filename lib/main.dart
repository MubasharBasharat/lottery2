import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Random y = Random();

  int x = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Mubashar Lottery App  ')),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text('lottery winning number is 5\n')),
              Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.cyan.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: x == 5
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.green.withOpacity(1.0),
                              size: 34,
                            ),
                            Text(
                              'Congrats you are winner.Your number is $x',
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 34,
                            ),
                            Text(
                              'Better Luck Next time! Your Number is $x',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                ),
              ),
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = y.nextInt(10);
            print(x);

            setState(() {});
          },
          child: Icon(Icons.refresh_rounded),
        ),
      ),
    );
  }
}
