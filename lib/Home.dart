import 'package:flutter/material.dart';
class HelloFlutter extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      //upper sabse top vala
        appBar: AppBar(
          //jese whatsapp per whatsapp likha hota h na vesa dikhne ke liye

          title: Text("First App"),
        ),
        //body ke liye ,tree structure follow hota h jese  Scaffold root ke appbar child h
        body:Container(
          color:Colors.white70,
          width: 400,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("First"),
              Text("Second"),
              Text("Third"),
              Image(image:AssetImage("assets/csit.jpg"),height: 200,width: 200,)
            ],
          ),
        )

    );
  }
}