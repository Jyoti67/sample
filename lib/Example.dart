import 'package:flutter/material.dart';
class TextfieldDecoration extends StatefulWidget {
  TextfieldDecoration({super.key});

  @override
  State<TextfieldDecoration> createState() => _TextfieldDecorationState();
}

class _TextfieldDecorationState extends State<TextfieldDecoration> {
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),

          IconButton(onPressed: (){

            // Navigator.push(context,MaterialPageRoute(builder: (context)=>ListTileExample(name: '', songs: [],)));
            showTimePicker(context: context, initialTime:TimeOfDay.now());
            showDatePicker(context: context, firstDate: DateTime(2020), lastDate: DateTime.now());



          }, icon: Icon(Icons.calendar_month)),

          Center(
            child: TextFormField(
              enabled: false,
              controller: controller,
              decoration: InputDecoration(
                hintText: "Hint",
                label: Text("Lable"),
                helper: Text("Helper"),
                border: OutlineInputBorder(

                  borderRadius:BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.orange)
                ),
                filled: true,
                fillColor: Colors.red,
                prefixIcon: Icon(Icons.search_rounded),

              ),
              onChanged: (value){
                print(value);
              },
              keyboardType: TextInputType.phone,

            ),
          ),
        ],
      ),
    );
  }
}