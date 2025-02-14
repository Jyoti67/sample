import 'package:flutter/material.dart';
//stateless= not change once we create
// dynamic ke liye satefull classes  $ value se string mein direct acess kar sakte h
//floating button   satefull mein setState anme ki method likni padti h usme jo function call karna h kar lo
//  defination of the state :
//
//  state reffers to the data that defines the current appearence and behaviour of
// your application .the data can encompass anything from user inputs and and prefffers to the featch datya
// from API or local storage.
// matlab ye h ki stateless mein agar kuch bhi likha ho jese counter app to count ek baar hi declare hua h to
// increase anhi hoga iske liye HAMKO NA statefull ka use karna padega


//Reacts setState function:


//in react this function is the primary machanism for update the state of the component.
// ie ham  ye bol sakte h ki state se pura function rebuild hota h
//splashscreen
class Splash extends StatefulWidget {
   Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  //yaha likhna h
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: NetworkImage("https://plus.unsplash.com/premium_photo-1673254850293-19e31e837e22?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw2fHx8ZW58MHx8fHx8"),height: 200,width: 200,fit:BoxFit.cover,),
      ),
    );
  }
}
