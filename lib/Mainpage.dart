import 'package:flutter/material.dart';
class Mainpage extends StatelessWidget {
   Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add,size: 20,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment:Alignment.centerLeft,
              child:
                  Positioned(
                    top: 90,
                    left:50,
                    child:
              Text("Hello",style: TextStyle(
                fontSize: 24,
              ),
              ),
            ),
            ),

            Align(
              alignment:Alignment.centerLeft,
              child:
              Text("Jyoti Bhowmick",style: TextStyle(
                fontSize: 24,
              ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(),
                SizedBox(
                    width: 320,

                    child: SearchBar(hintText: "Search Here",leading: Icon(Icons.search),)),
                IconButton(onPressed: (){}, icon:Icon(Icons.filter)),

                SizedBox(
                  height: 10,
                ),

              ],
            ),


            SizedBox(
              height: 20,
            ),


            Align(
              alignment:Alignment.centerLeft,
              child:
              Text("Enrolled Courses",style: TextStyle(
                fontSize: 24,
              ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

        Align(
          alignment:Alignment.centerLeft,


               child:   Container(
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
                          blurRadius:10,
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


            SizedBox(
              height: 40,
            ),
            Align(
              alignment:Alignment.centerLeft,
              child:
              Text("Explore Your Courses",style: TextStyle(
                fontSize: 24,
              ),
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Row(
              children: [
                ElevatedButton(onPressed: (){}, child:Text("All")),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(onPressed: (){}, child:Text("Popular")),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(onPressed: (){}, child:Text("Newest")),

              ],
            ),

            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  height:100 ,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1681487942927-e1a2786e6036?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2xvdWQlMjBjb21wdXRpbmclMjBzZXJ2aWNlc3xlbnwwfHwwfHx8MA%3D%3D"),
                      fit: BoxFit.cover,

                  ),
                  ),

                  child: Stack(
                    //adding ongoing
                    children: [
                      Positioned(
                        top: 50,
                        left: 10,
                        child:  Text("Cloud",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        ),
                      ),


                      // adding 5/17 Lessons
                      Positioned(
                        top: 70,
                        left: 10,
                        child:Text("5/17 Lessons",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),

            ),
                SizedBox(width: 30,),

                Container(
                  width: 200,
                  height:100 ,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1620632523414-054c7bea12ac?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fEhUTUwlMjBsb2dvfGVufDB8fDB8fHww"),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Stack(
                    //adding ongoing
                    children: [
                      Positioned(
                        top: 50,
                        left: 10,
                        child:  Text("HTML",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 10,
                        child:Text("5/17 Lessons",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),

                    ],
                  ),

                ),

        ]
            ),

            SizedBox(
              height: 30,
            ),
            Row(
                children: [
                  Container(
                    width: 200,
                    height:100 ,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1618788372246-79faff0c3742?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHVzZXIlMjBpbnRlcmZhY2UlMjBkZXNpZ258ZW58MHx8MHx8fDA%3D"),
                        fit: BoxFit.cover,

                      ),
                    ),

                    child: Stack(
                      //adding ongoing
                      children: [
                        Positioned(
                          top: 50,
                          left: 10,
                          child:  Text("User Interface",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          ),
                        ),


                        // adding 5/17 Lessons
                        Positioned(
                          top: 70,
                          left: 10,
                          child:Text("5/17 Lessons",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  SizedBox(width: 30,),

                  Container(
                    width: 150,
                    height:100 ,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1664297989345-f4ff2063b212?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZGF0YWJhc2V8ZW58MHx8MHx8fDA%3D"),
                        fit: BoxFit.cover,
                      ),
                    ),

                    child: Stack(
                      //adding ongoing
                      children: [
                        Positioned(
                          top: 50,
                          left: 10,
                          child:  Text("Database",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          ),
                        ),
                        Positioned(
                          top: 70,
                          left: 10,
                          child:Text("5/17 Lessons",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),

                ]
            ),


            SizedBox(
              height: 30,
            ),
            Row(
                children: [
                  Container(
                    width: 150,
                    height:100 ,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1501788260/photo/artificial-intelligence-concept-innovations-and-tehcnology.webp?a=1&b=1&s=612x612&w=0&k=20&c=m077pS3HYNJeHs9e9YxcOHGZlAdrHvId1MzyI7vqD7E="),
                        fit: BoxFit.cover,

                      ),
                    ),

                    child: Stack(
                      //adding ongoing
                      children: [
                        Positioned(
                          top: 50,
                          left: 10,
                          child:  Text("AI",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          ),
                        ),


                        // adding 5/17 Lessons
                        Positioned(
                          top: 70,
                          left: 10,
                          child:Text("5/17 Lessons",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  SizedBox(width: 30,),

                  Container(
                    width: 200,
                    height:100 ,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1619454016518-697bc231e7cb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGphdmFzY3JpcHQlMjBsb2dvfGVufDB8fDB8fHww"),
                        fit: BoxFit.cover,
                      ),
                    ),

                    child: Stack(
                      //adding ongoing
                      children: [
                        Positioned(
                          top: 50,
                          left: 10,
                          child:  Text("Macdonals",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          ),
                        ),
                        Positioned(
                          top: 70,
                          left: 10,
                          child:Text("5/17 Lessons",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),

                ]
            ),


          ],
        ),
      ),
    );
  }
}
