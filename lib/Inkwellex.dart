import 'package:flutter/material.dart';
class Inkwellexample extends StatelessWidget {
  Inkwellexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inkwell Widget Use"),),
      body:InkWell(
        onTap: (){
          print("Inkwell");
        },
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "Tap Here",
              style: TextStyle(
                fontSize: 18,
                color: Colors.pink,
              ),
            ),
          ),
        ),
        splashColor:Colors.amberAccent,
        highlightColor: Colors.red,
        radius: 20,
      ),
    );
  }
}
