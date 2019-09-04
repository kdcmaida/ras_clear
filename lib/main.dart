import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ras_clear/screens/HomeScreen.dart';
import 'dart:io';
void main() {
  Admob.initialize(getAppId());
  runApp(
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

}

String getAppId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-3940256099942544~1458002511';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-3940256099942544~3347511713';
  }
  return null;
}
