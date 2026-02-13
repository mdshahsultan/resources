import 'package:flutter/material.dart';
import 'package:resources/screen/tab_bar_activity.dart';
import 'grid_view_builder.dart';
import 'navigation2.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Navigate Other Pages"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),

            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TabBarActivity()));
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // button color
                foregroundColor: Colors.white,
                minimumSize: Size(200, 50), // width, height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 6, // shadow
              ),

                child: Text("Tab Bar Activity"),
            ),

        SizedBox(
          height: 10,
        ),

            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GridViewBuilder()));
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // button color
                  foregroundColor: Colors.white,
                  minimumSize: Size(200, 50), // width, height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 6, // shadow
                ),
                child: Text("Gride View Builder")),
          ],
        ),
      ),
    );
  }
}
