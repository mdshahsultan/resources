import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key});

  @override
  Widget build(BuildContext context) {
    //Button Style Start
      ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
      );
    //Button Style End
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Text Form Field", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration( border: OutlineInputBorder(), labelText: "First Name"),),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration( border: OutlineInputBorder(), labelText: "Last Name"),),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration( border: OutlineInputBorder(), labelText: "Email Address"),),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(onPressed: (){}, child: Text("Submit!"), style: buttonStyle,),
          ),
        ],
      ),
    );
  }
}
