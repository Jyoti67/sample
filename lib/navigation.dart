import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';
import'package:sample/registeration.dart';
class Navi extends StatelessWidget {
   Navi({super.key});
  var nameController = TextEditingController();
  var noController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Here",
        style: TextStyle(
          color: Colors.white, // change the text color to white
          fontSize: 40, // change the font size to 24
          fontWeight: FontWeight.bold,
          fontFamily:'Italic',// make the text bold
        ),
      ),
          backgroundColor: Color(0xFFA7C7E7),
      ),
      body:
      Container(
        child: Column(
            children: [ SizedBox(
            height: 20,
          ),
          //name

                 FunTextField(
                  controller: nameController,
                  lable: 'Name',
                  hint: 'Name',
                ),


                FunTextField(
                  controller:noController, lable: 'Password', hint: 'Password',
                ),
               // FunTextField(controller:nameController, lable: 'Name', hint: 'Name',),
               // FunTextField(controller:noController, lable: 'Password', hint: 'Password',passwordfield:true,),
          //login btn
              ElevatedButton(onPressed: (){
                Map<String, String> data = {
                  "name": nameController.text.toString(),
                  "no": noController.text.toString(),
                };

                print(data);

              }, child: Text("Login")),
              SizedBox(height: 20),
          Center(
            child: ElevatedButton(onPressed:(){
             // Navigator.push(context, MaterialPageRoute(builder:(context)=> Register()));
              Navigator.pushNamed(context,"/registration");
            }, child:Text("Go to Registration page")),
          ),
          ],
          ),
      ),

    );
  }
}
