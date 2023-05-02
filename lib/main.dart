import 'package:flutter/material.dart';
import 'package:sheratonapp/presentaion/view/ccc.dart';
import 'package:sheratonapp/presentaion/view/loginscreen.dart';
import 'package:sheratonapp/presentaion/view/test.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen1(),
    );
  }
}

