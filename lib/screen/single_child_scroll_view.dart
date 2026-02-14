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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: 100, width: 100, color: Colors.red,),
              SizedBox(height: 5,),
              Container(height: 100, width: 100, color: Colors.green,),
              SizedBox(height: 5,),
              Container(height: 100, width: 100, color: Colors.blue,),
              SizedBox(height: 5,),
              Container(height: 100, width: 100, color: Colors.black,),
              SizedBox(height: 5,),
              Container(height: 100, width: 100, color: Colors.red,),
              SizedBox(height: 5,),
              Container(height: 100, width: 100, color: Colors.green,),
              SizedBox(height: 5,),
              Container(height: 100, width: 100, color: Colors.blue,),
              SizedBox(height: 5,),
              Container(height: 100, width: 100, color: Colors.black,),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}