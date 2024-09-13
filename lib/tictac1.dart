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
      body:Center(
        child: Text("Hello Flutter"),
      )

    );
  }
}