import 'package:flutter/material.dart';
class Listex extends StatelessWidget {
   Listex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Example"),
      ),
      body:
          // SingleChildScrollView(
          //   child:
      ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("All Courses",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:200),
                child: Text("See All"),
              ),

            ],
          ),
      //),

         SizedBox(
           height: 20,
         ),



    Container(
    width: 300,
    height: 120,
    decoration: BoxDecoration(
    color: Colors.white60,
    borderRadius: BorderRadius.circular(30),
      border: Border(
        left: BorderSide(width: 3, color: Colors.black12),
        bottom: BorderSide(width: 5, color: Colors.black12),
        right: BorderSide(width: 3, color: Colors.black12),
        top: BorderSide(width: 1, color: Colors.black12),
      ),

    ),
    child:
         Row(
           children: [
             Container(
               width: 120,
               height: 90,
               decoration: BoxDecoration(
                 color: Colors.yellowAccent,
                 borderRadius: BorderRadius.circular(30),
                 image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1683121713210-97667d2e83c8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGVjaG5vbG9neSUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D"),
                   fit: BoxFit.cover,),
               ),
             ),
             SizedBox(width: 10,),

             Padding(
               padding: const EdgeInsets.only(top: 40),
               child: Column(
                 children: [
                   Text("Cloud",style: TextStyle(
                     fontWeight:FontWeight.bold,
                     fontSize: 18,
                   ),),
                   Text("52 Lessons"),
                 ],
               ),
             ),

             SizedBox(
               width: 20,
             ),
             Padding(
               padding: const EdgeInsets.only(top: 40),
               child: ElevatedButton(onPressed: (){}, child:
               Text("Enroll Now"),
               ),
             ),
           ],
         ),
    ),



          //2nd container

          SizedBox(
            height: 20,
          ),



          Container(
            width: 300,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(30),
              border: Border(
                left: BorderSide(width: 3, color: Colors.black12),
                bottom: BorderSide(width: 5, color: Colors.black12),
                right: BorderSide(width: 3, color: Colors.black12),
                top: BorderSide(width: 1, color: Colors.black12),
              ),

            ),
            child:
            Row(
              children: [
                Container(
                  width: 120,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1515879218367-8466d910aaa4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGMlMjBsYW5ndWFnZXxlbnwwfHwwfHx8MA%3D%3D"),
                      fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: 10,),

                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text("Cyber ",style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 18,
                      ),),
                      Text("52 Lessons"),
                    ],
                  ),
                ),

                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(onPressed: (){}, child:
                  Text("Enroll Now"),
                  ),
                ),
              ],
            ),
          ),

          //thired

          SizedBox(
            height: 20,
          ),



          Container(
            width: 300,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(30),
              border: Border(
                left: BorderSide(width: 3, color: Colors.black12),
                bottom: BorderSide(width: 5, color: Colors.black12),
                right: BorderSide(width: 3, color: Colors.black12),
                top: BorderSide(width: 1, color: Colors.black12),
              ),

            ),
            child:
            Row(
              children: [
                Container(
                  width: 120,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1661331911412-330f2e99cf53?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Zmx1dHRlcnxlbnwwfHwwfHx8MA%3D%3D"),
                      fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: 10,),

                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text("Flutter",style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 18,
                      ),),
                      Text("52 Lessons"),
                    ],
                  ),
                ),

                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(onPressed: (){}, child:
                  Text("Enroll Now"),
                  ),
                ),
              ],
            ),
          ),

          //fourth

          SizedBox(
            height: 20,
          ),



          Container(
            width: 300,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(30),
              border: Border(
                left: BorderSide(width: 3, color: Colors.black12),
                bottom: BorderSide(width: 5, color: Colors.black12),
                right: BorderSide(width: 3, color: Colors.black12),
                top: BorderSide(width: 1, color: Colors.black12),
              ),

            ),
            child:
            Row(
              children: [
                Container(
                  width: 120,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1609876322269-eac81abb26a7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZsdXR0ZXJ8ZW58MHx8MHx8fDA%3D"),
                      fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: 10,),

                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text("Butterfly",style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 18,
                      ),),
                      Text("52 Lessons"),
                    ],
                  ),
                ),

                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(onPressed: (){}, child:
                  Text("Enroll Now"),
                  ),
                ),
              ],
            ),
          ),

          //fifth

          SizedBox(
            height: 20,
          ),



          Container(
            width: 300,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(30),
              border: Border(
                left: BorderSide(width: 3, color: Colors.black12),
                bottom: BorderSide(width: 5, color: Colors.black12),
                right: BorderSide(width: 3, color: Colors.black12),
                top: BorderSide(width: 1, color: Colors.black12),
              ),

            ),
            child:
            Row(
              children: [
                Container(
                  width: 120,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1659079631665-eb95370fb173?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8amF2YXNjcmlwdHxlbnwwfHwwfHx8MA%3D%3D"),
                      fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: 10,),

                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text("Robort",style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 18,
                      ),),
                      Text("52 Lessons"),
                    ],
                  ),
                ),

                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(onPressed: (){}, child:
                  Text("Enroll Now"),
                  ),
                ),
              ],
            ),
          ),

          //6th

          SizedBox(
            height: 20,
          ),



          Container(
            width: 300,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(30),
              border: Border(
                left: BorderSide(width: 3, color: Colors.black12),
                bottom: BorderSide(width: 5, color: Colors.black12),
                right: BorderSide(width: 3, color: Colors.black12),
                top: BorderSide(width: 1, color: Colors.black12),
              ),

            ),
            child:
            Row(
              children: [
                Container(
                  width: 120,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1664297847109-a01715c2dc8e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8amF2YXNjcmlwdHxlbnwwfHwwfHx8MA%3D%3D"),
                      fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: 10,),

                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Text("Java",style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 18,
                      ),),
                      Text("52 Lessons"),
                    ],
                  ),
                ),

                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(onPressed: (){}, child:
                  Text("Enroll Now"),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}



