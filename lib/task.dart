import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image:AssetImage("assets/girl.jpg"),height: 400,width: 550,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("Dewas Lake"),
                  Text("Dewas Madhya Pradesh",style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10)
                  )
                ],

                      
              ),
              Icon(Icons.star,color: Colors.deepOrange,),
              Text("41"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //column for call
             Column(
               children: [
                 Icon(Icons.call , color: Colors.blue),
                 Text("call"),
               ],
             ),
             //coloumn for route
              Column(
                children: [
                  Icon(Icons.navigation , color: Colors.blue),
                  Text("routs"),
                ],
              ),
              //icon for share
              Column(
                children: [
                  Icon(Icons.share , color: Colors.blue),
                  Text("share"),
                ],
              ),

            ],
          ),
          


                Text("A lake is a body of fresh or saltwater surrounded by land. Lakes can be found in various sizes and shapes, from small ponds to massive inland seas. They support a wide range of aquatic life, including fish, plants, and other organisms. Lakes also play a crucial role in the water cycle, helping to regulate the Earth's climate and weather patterns"),
          // ElevatedButton(onPressed:(){
          //   print("First btn");
          // }, child:Text("print")),
          // OutlinedButton(onPressed: (){
          //   print("Last Btn");
          // }, child:Icon(Icons.add)),
          // IconButton(onPressed: (){}, icon:Icon(Icons.add)),
          // TextButton(onPressed: (){}, child:Text("read me")),
          // TextField(),

        ],
      ),
    );
  }
}
