import 'package:flutter/material.dart';

class CardPages extends StatelessWidget {
  const CardPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Card Pages", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          color: Color.fromRGBO(33, 191, 115, 1), //main color
          shadowColor: Color.fromRGBO(176, 234, 205, 1), //shadow color
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 80,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(child: Text("This is card!")),
          ),
        ),
      ),
    );
  }
}
