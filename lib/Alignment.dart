import 'package:flutter/material.dart';

class All extends StatelessWidget {
  All({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alignment Example"),
      ),
      body: Column(
        children: [
          // Example 1: Center alignment
          Row(
            children: [
              Container(
                width: 300,
                height: 100,
                color: Colors.grey,
                alignment: Alignment.center,
                child: Text("Center Alignment"),
              ),

              SizedBox(height: 20),

              // Example 2: Top left alignment
              Container(
                width: 300,
                height: 100,
                color: Colors.tealAccent,
                alignment: Alignment.topLeft,
                child: Text("Top Left Alignment"),
              ),
              SizedBox(height: 20),

              // Example 3: Bottom right alignment
              Container(
                width: 300,
                height: 100,
                color: Colors.teal,
                alignment: Alignment.bottomRight,
                child: Text("Bottom Right Alignment"),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Example 4: Center left alignment
          Row(
            children: [
              Container(
                width: 300,
                height: 100,
                color: Colors.grey,
                alignment: Alignment.centerLeft,
                child: Text("Center Left Alignment"),
              ),
              SizedBox(height: 20),

              // Example 5: Center right alignment
              Container(
                width: 300,
                height: 100,
                color: Colors.grey,
                alignment: Alignment.centerRight,
                child: Text("Center Right Alignment"),
              ),
              SizedBox(height: 20),
              // Example 6: Top center alignment
              Container(
                width: 300,
                height: 100,
                color: Colors.grey,
                alignment: Alignment.topCenter,
                child: Text("Top Center Alignment"),
              ),
            ],
          ),
          SizedBox(height: 20),

          // Example 7: Bottom center alignment
          Container(
            width: 300,
            height: 100,
            color: Colors.grey,
            alignment: Alignment.bottomCenter,
            child: Text("Bottom Center Alignment"),
          ),
        ],
      ),
    );
  }
}