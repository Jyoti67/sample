import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Its Me"),),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: "Name",
              hintText: "Jyoti Bhowmick",
              helperText: "Enter Your Full Name",
              filled:true,
              fillColor: Colors.amberAccent,
              prefixText: "//https",
              suffixText: ".com",
              prefixIcon: Icon(Icons.person),
              suffixIcon: Icon(Icons.face),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
            ),
          ),

        ],
      ),
    );
  }
}
