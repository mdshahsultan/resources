import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Text Form Field", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
    );
  }
}
