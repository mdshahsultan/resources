import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Circular Progress Indicator", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),

      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.blue.shade200,
          color: Colors.blue,
          strokeWidth: 6,
        ),
      ),
    );
  }
}
