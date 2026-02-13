import 'package:flutter/material.dart';

class IconClass extends StatelessWidget {
  const IconClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Icon Class", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Icon(
            Icons.home,
            size: 150,
            color: Colors.blue,
        ),
      ),
    );
  }
}
