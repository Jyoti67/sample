import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  PageViewExample({super.key});
  var pageController = PageController();

  List<Map<String, String>> data = [{"Text": "Page1", "Color": "0xFF4E8752"},{"Text": "Page2", "Color":"0xFF4A8BF0" },{"Text": "Page3", "Color": "0xFF4E8752"},];

  var values = ["Page 1", "Page 2", "Page 5"];

  var colors = [Colors.blue,Colors.orange];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 500,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(int.parse(data[index]["Color"].toString()))),
                    child: Text(
                      data[index]["Text"].toString(),
                      style: TextStyle(fontSize: 24),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 70,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                  child: Text(
                    " 1 ",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 70,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                  child: Text(
                    " 2 ",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 70,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                  child: Text(
                    " 3 ",
                    style: TextStyle(fontSize: 24),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}