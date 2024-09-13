import 'package:flutter/material.dart';
class Ges extends StatelessWidget {
   Ges ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GestureDetector "),),
      body: GestureDetector(
        onTap: (){
          print("Tapped");
        },
        onLongPress: (){
          print("LongPressed");
        },
        onDoubleTap: (){
          print("DoubleTaped");
        },
        child: Container(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text("Tap Me, Swipe me,scroll me",style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
          ),
        ),

      ),
    );
  }
}
