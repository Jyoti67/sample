import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState ();
}

class _MyAppState extends State<MyApp> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('GeeksForGeeks'),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: Text('Switch', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        body: Center(
          child: AnimatedCrossFade(
            firstChild: Container(
              height: 230,
              width: 250,
              color: Colors.blue,
            ),
            secondChild: Container(
              height: 250,
              width: 230,
              color: Colors.green,
            ),
            crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}