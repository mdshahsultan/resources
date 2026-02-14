import 'package:flutter/material.dart';

class AspectRatio1 extends StatelessWidget {
  const AspectRatio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Aspect Ratio", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
//Aspect Ratio Start
//       body: Container(
//         width: double.infinity,
//         height: 300,
//         color: Colors.blue.shade100,
//         alignment: Alignment.center,
//         child: AspectRatio(
//             aspectRatio: 4/3,
//             child: Container(
//               color: Colors.green,
//             ),
//         ),
//       ),
//Aspect Ratio End
      //FractionallySizeBox Start
      // body: Center(
      //   child: FractionallySizedBox(
      //     widthFactor: 0.5, //catch display actual size
      //     heightFactor: 0.3,
      //     child: Container(
      //       color: Colors.blue,
      //     ),
      //   ),
      // ),
      //FractionallySizeBox End
      //LayoutBuilder Start
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            if (constraints.maxWidth>600){ //container different view various device
              return Container(height: 400, width: 400, color: Colors.green,);
            }
            else{
              return Container(height: 200, width: 200, color: Colors.red,);
            }
          }
      ),
      //LayoutBuilder End
    );
  }
}
