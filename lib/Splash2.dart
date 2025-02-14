import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import "package:sample/Listex2.dart";
class Splash2 extends StatefulWidget {
   Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage1()),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/Animation.json"),
      ),
    );
  }
}

