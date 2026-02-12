import 'package:flutter/material.dart';
import '../screen/alert_dialog.dart';
import '../screen/grid_view_builder.dart';
import '../screen/list_view.dart';
import '../screen/tab_bar_activity.dart';
import '../screen/text_form.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarActivity(),
      theme: ThemeData(
        primarySwatch: Colors.blue,

        // AppBar Theme
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            //fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),

        // TabBar Theme
        tabBarTheme: TabBarThemeData(
          labelColor: Colors.white,              // Active tab text+icon
          unselectedLabelColor: Colors.white70,  // Inactive tab text+icon
          indicatorColor: Colors.white,
        ),

      ),
    );
  }
}

