import 'package:flutter/material.dart';

class ExpendedFlex extends StatelessWidget {
  const ExpendedFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Expended & Flexible View", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column( //same as Row
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible( //Same as Expanded
            fit: FlexFit.tight,
            flex: 2,
              child: Container(color: Colors.red,),
          ),
          Expanded( //Same as Flexible
            flex: 3,
              child: Container(color: Colors.green,),
          ),
          Expanded(
            flex: 1,
              child: Container(color: Colors.blue,),
          ),
        ],

      ),
    );
  }
}
