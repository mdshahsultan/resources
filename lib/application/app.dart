import 'package:flutter/material.dart';
import '../screen/alert_dialog.dart';
import '../screen/list_view.dart';
import '../screen/text_form.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewCreate(),
    );
  }
}
