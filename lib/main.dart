import"package:flutter/material.dart";
import "package:sample/Dolly.dart";
import "package:sample/List.dart";
import "package:sample/Splash2.dart";
import "package:sample/Splashscreen.dart";
import "package:sample/Listex2.dart";
import "package:sample/Mainpage.dart";
import "package:sample/PageView.dart";
import "package:sample/stack.dart";
import "Biometric.dart";
import "Houses.dart";
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
      title: "Trial",
      // theme: ThemeData(
      //   appBarTheme: AppBarTheme(
      //     titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
      //   ),
      // ),
      home:ResponsiveHomePage(),
    );
  }
}