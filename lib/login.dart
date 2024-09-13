import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';
class Login extends StatelessWidget {
  Login({super.key});

  var nameController = TextEditingController();
  var noController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Here "),
      ),
      body: Column(
        children: [SizedBox(
          height: 20,
        ),
          //name
          FunTextField(controller:nameController, lable: 'Name', hint: 'Name',
          ),
          // No
          FunTextField(controller: noController, lable: 'password', hint: 'Password',),
          // TextField(
          //  controller: noController,
          //  decoration: InputDecoration(
          //   prefixStyle: TextStyle(color: Colors.black),
          //   prefixText: "+91",
          //     prefixIcon: Icon(Icons.call),
          //     hintText: "Phone Number"
          // ),
          //  ),
          //SizedBox(
          //  height: 20,
          // ),
          //email
          FunTextField(controller: emailController, lable: "Email", hint: "Email",forEmail: true,),
          // TextField(
          //   controller: emailController,
          //    decoration: InputDecoration(
          //        hintText: "Email"
          //    ),
          //  ),
          //  SizedBox(
          //    height: 20,
          // ),
          // Address
          FunTextField(controller: addressController, lable: "Address", hint: "Address",),
          // TextField(
          //   controller: addressController,
          //   decoration: InputDecoration(
          //       hintText: "Address"
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Registration btn
          ElevatedButton(onPressed: (){
            Map<String, String> data = {
              "name": nameController.text.toString(),
              "no": noController.text.toString(),
              "email": emailController.text.toString(),
              "Address": addressController.text.toString(),
            };

            print(data);

          }, child: Text("Registration")),
          Center(
            child: ElevatedButton(onPressed:(){
              Navigator.pop(context);
            }, child:Text("Go Back")
            ),
          )



        ],
      ),
    );
  }
}