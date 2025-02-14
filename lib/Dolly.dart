import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';
// import 'package:helloworld/registration.dart';

class Registration extends StatelessWidget {
  Registration({super.key});

  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var cpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Opacity(opacity: 0.6,
                child: Container(width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(400),
                        )
                    )),),
              Opacity(opacity: 0.6,
                child: Positioned(
                  left: 100,
                  child: Container(width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(500),
                            bottomLeft: Radius.circular(500),
                          )
                      )),),),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Welcome Abroad!',
                style: TextStyle(fontSize: 32, color: Colors.black,)),
            SizedBox(
              height: 30,
            ),
            Text("Let's get your career ready",
                style: TextStyle(fontSize: 12, color: Colors.grey,)),
            SizedBox(
              height: 20,
            ),
            FunTextField(
              controller: nameController,
              lable: 'Enter your full name',
              hint: 'name',
              width: 280,
            ),
            // TextField(
            //     controller: nameController,
            //     decoration: InputDecoration(hintText: "name")),
            FunTextField(
              controller: emailController,
              lable: 'Enter your email',
              hint: 'email',
              width: 280,
            ),
            FunTextField(
              controller: passwordController,
              lable: 'Enter password',
              hint: 'pass',
              width: 280,
            ),
            FunTextField(
              controller: cpassController,
              lable: 'Confirm Password',
              hint: 'cpass',
              width: 280,
            ),
            // TextField(
            //     controller: passwordController,
            //     decoration: InputDecoration(hintText: "pass")),

            ElevatedButton(
                onPressed: () {
                  Map<String, String> data = {
                    "name": nameController.text.toString(),
                    "email": emailController.text.toString(),
                    "pass": passwordController.text.toString(),
                    "cpass": cpassController.text.toString(),
                  };
                  // width:100,
                  // height:100,
                  // decoration:BoxDecoration(
                  //   color:Colors.blue,
                  // ),
                  print(data);
                  print(nameController.text);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Registration()));
                  // Navigator.pushNamed(
                  //     context, "GameUI"); // Navigator.pop(context);
                },
                child: const Text("Registration", style: TextStyle(
                  color: Colors.black, fontSize: 22,
                ),)),
            Text("Already have an account?"),
            Text('sign in',
                style: TextStyle(
                  color: Colors.blue,
                )),
          ])
        ],
      ),

    );
  }
}