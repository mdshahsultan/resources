import 'package:flutter/material.dart';

class AlertDialogBox extends StatelessWidget {
  const AlertDialogBox({super.key});
  
  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  MyAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(child: AlertDialog(
            title: Text("Alert!"),
            content: Text("Do you want to delete?"),
            actions: [
              TextButton(onPressed: (){
                MySnackBar("Delete Success", context);
                Navigator.of(context).pop();
              }, child: Text("Yes")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
            ],
          )
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Alert Dialog Box", style: TextStyle(color: Colors.white),),),
      ),

      body: Center(
        child: ElevatedButton(onPressed: (){MyAlertDialog(context);}, child: Text("Click Me")),
      ),
    );
  }
}
