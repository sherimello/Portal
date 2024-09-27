import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:untitled1/pages/beautiful_animation.dart';
import 'package:untitled1/pages/home.dart';
import 'package:untitled1/pages/stack_example.dart';
import 'package:untitled1/pages/test.dart';

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

    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BeautifulAnimation()
    );
  }
}