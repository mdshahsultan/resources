import 'package:flutter/material.dart';

class SingleChildScroll extends StatelessWidget {
  const SingleChildScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Single Child Scroll View", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 200, width: 200, color: Colors.red,),
              SizedBox(width: 5,),
              Container(height: 200, width: 200, color: Colors.green,),
              SizedBox(width: 5,),
              Container(height: 200, width: 200, color: Colors.blue,),
              SizedBox(width: 5,),
              Container(height: 200, width: 200, color: Colors.black,),
              SizedBox(width: 5,),
              Container(height: 200, width: 200, color: Colors.red,),
              SizedBox(width: 5,),
              Container(height: 200, width: 200, color: Colors.green,),
              SizedBox(width: 5,),
              Container(height: 200, width: 200, color: Colors.blue,),
              SizedBox(width: 5,),
              Container(height: 200, width: 200, color: Colors.black,),
              SizedBox(width: 5,),
            ],
          ),
        ),
      ),
    );
  }
}