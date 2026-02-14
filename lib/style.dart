import 'package:flutter/material.dart';
import 'dart:ui';

TextStyle HeadLine(context) {
  var width = MediaQuery.of(context).size.width;
  if (width < 500){
    //Mobile Device
    return TextStyle(
      color: Colors.black,
      fontSize: 34,
    );
  }
  else{
    //Desktop Device
    return TextStyle(
      color: Colors.black,
      fontSize: 60,
    );
  }
}