import 'package:flutter/material.dart';
import '../style.dart';

class Mediaquery extends StatelessWidget {
  const Mediaquery({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Media Query Pages", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Screen width = ${width}"),
            Text("Screen width = ${height}"),
            Text("Screen width = ${orientation}"),
            Text("Hello Rubel!", style: HeadLine(context)), //handle from style.dart file
          ],
        ),
      ),

    );
  }
}
