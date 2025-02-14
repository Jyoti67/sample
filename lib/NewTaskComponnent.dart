import 'package:flutter/material.dart';
class Calenderlistview extends StatelessWidget {
  String heading ;
  String subHeading ;
  String imagePath ;
  String text1;
  String text2;

  Calenderlistview({super.key, required this.heading, required this.subHeading, required this.imagePath, required this.text1,required this.text2,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(

        // alignment: Alignment.topLeft,
        //width: width,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
            ),
          ],
        ),
        child:

        Padding(
          padding: const EdgeInsets.only(left: 20,top: 10,right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      heading,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color(0XFFBBB9C1),
                      ),
                    ),
                  ),
                  //SizedBox(width: 20,),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 210),
                child: Text(
                  subHeading,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.watch,color: Color(0XFF5F32E0),),
                    Padding(
                      padding: const EdgeInsets.only(right: 180),
                      child: Text(text1),
                    ),
                    Container(
                      width: 55,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0XFFA7D5FF),
                      ),
                      child: Center(child: Text(text2,style: TextStyle(
                        color:Colors.blue,
                      ),
                      ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
