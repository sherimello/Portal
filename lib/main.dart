import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      // Set your desired color here
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    int i = 0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }


}