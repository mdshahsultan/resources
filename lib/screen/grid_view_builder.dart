import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  GridViewBuilder({super.key});

  var MyItems = [
    {"img" : "https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/premium-photo/jezebel-butterfly-resting-royal-poinciana-flower-plant-soft-green-beautiful-background_7954-3349.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/premium-photo/jezebel-butterfly-resting-royal-poinciana-flower-plant-soft-green-beautiful-background_7954-3349.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg", "title" : "Shah Sultan Rubel"},

    {"img" : "https://img.freepik.com/premium-photo/jezebel-butterfly-resting-royal-poinciana-flower-plant-soft-green-beautiful-background_7954-3349.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/premium-photo/jezebel-butterfly-resting-royal-poinciana-flower-plant-soft-green-beautiful-background_7954-3349.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg", "title" : "Shah Sultan Rubel"},

    {"img" : "https://img.freepik.com/premium-photo/jezebel-butterfly-resting-royal-poinciana-flower-plant-soft-green-beautiful-background_7954-3349.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/premium-photo/jezebel-butterfly-resting-royal-poinciana-flower-plant-soft-green-beautiful-background_7954-3349.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg", "title" : "Shah Sultan Rubel"},

    {"img" : "https://img.freepik.com/premium-photo/jezebel-butterfly-resting-royal-poinciana-flower-plant-soft-green-beautiful-background_7954-3349.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/premium-photo/jezebel-butterfly-resting-royal-poinciana-flower-plant-soft-green-beautiful-background_7954-3349.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg", "title" : "Shah Sultan Rubel"},
    {"img" : "https://img.freepik.com/premium-photo/jezebel-butterfly-resting-royal-poinciana-flower-plant-soft-green-beautiful-background_7954-3349.jpg", "title" : "Shah Sultan Rubel"},
  ];
  //When onpress then work this code
  mySnackBar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Grid View Builder", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          childAspectRatio: 1.9,

        ),
        itemCount: MyItems.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){mySnackBar(context, MyItems[index]["title"]);},
            //onDoubleTap: (){mySnackBar(context, MyItems[index]["title"]);},
            //onLongPress: (){mySnackBar(context, MyItems[index]["title"]);},
            child: Container(
              margin: EdgeInsets.all(5),
              width: double.infinity,
              height: 220,
              child: Image.network(MyItems[index]["img"]!, fit: BoxFit.fill,),
            ),
          );
        },
      ),
    );
  }
}
