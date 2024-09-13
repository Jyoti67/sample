import"package:flutter/material.dart";
import "package:sample/List.dart";
import "package:sample/Listex2.dart";
import "package:sample/Mainpage.dart";
import "package:sample/PageView.dart";
//import "package:sample/navigation.dart";
//import "package:sample/stack.dart";

main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    //initialRoute: "/Alignment",
    //   routes: {
    //   "/navigation":(context)=>Navi(),
    //     "/registration":(context)=>Register(),
      //},
      title: "Trial",
      home:Listex(),
    );
  }
}