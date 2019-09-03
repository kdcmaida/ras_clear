import 'package:flutter/material.dart';
import 'package:ras_clear/screens/HomeScreen.dart';

void main() => runApp(
MaterialApp(
  title: 'YouTube',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      accentColor: Colors.black,
      primaryColor: Color(0xFFffffff),
      primaryColorDark: Color(0xffffff)),
  home: HomeScreen(),
)

);
