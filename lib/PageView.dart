import 'package:flutter/material.dart';
class Pagevieweg extends StatelessWidget {
  Pagevieweg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
      ),
      body: Column(
        //pageview ko hamesha sizebox mein wrap karnma chahiye
        //list ke liye listView  straght and page ke liye pageView horizontal [slider]
        children: [
          SizedBox(
          height: 100,
          width: 200,
            child: PageView(
              controller: PageController(),
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  alignment:Alignment.center,
                 decoration: BoxDecoration(
                   color: Colors.tealAccent,
                   borderRadius: BorderRadius.circular(25),
                 ),
                  child: Text("page1"),
                ),
                Container(
                  alignment:Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text("page2"),
                ),

                Container(
                  alignment:Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text("page3"),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
