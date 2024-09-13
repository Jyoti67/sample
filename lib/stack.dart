import 'package:flutter/material.dart';
class Stackex extends StatelessWidget {
  const Stackex({super.key});
// stack me overlap ka concept use hota h ,eg: image per text or circle ke uper ek or circle
  // childern return hota h just like row and columns
  //container decoration  by box decoration and text decoration by style hota h
  // containe rme image easy way mein upload ki ja sakte h here we use decoration image unplash se
  // boxfit ke through ham sabhi chize fit bhi kar sakte h ,shadow
  // for padding we have a perticuler vidget to wrap
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Stack  Example"),),
        body:
          Center(
            child: Container(
            width: 500,
            height: 300,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1683121713210-97667d2e83c8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGVjaG5vbG9neSUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink,
                    blurRadius: 97,
                  ),
                ],

              ),
              child: Stack(
                //adding ongoing
                  children: [
                    Positioned(
                      top: 20,
                      left: 50,
                      child:  Text("Ongoing",style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,

                    ),
                    ),
                    ),


                    //adding computer hardware

                    Positioned(
                      top: 90,
                        left: 50,
                        child: Text("Computer Hardware",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                    ),


                    // adding 5/17 Lessons
                    Positioned(
                      top: 140,
                        left: 50,
                        child:Text("5/17 Lessons",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                    ),

                    //continue button
                    Positioned(
                      top: 220,
                        left: 50,
                        child:ElevatedButton(onPressed: (){
                          print("Button pressed");
                        }, child: Text("Continue"),
                        ),
                    ),
                  ],
              ),
                    ),
          ),

    );
  }
}
