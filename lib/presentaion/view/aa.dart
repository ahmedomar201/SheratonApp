import 'dart:async';
import 'package:flutter/material.dart';

class BouncingBallDemo extends StatefulWidget {
  @override
  State<BouncingBallDemo> createState() => _BouncingBallDemoState();
}

class _BouncingBallDemoState extends State<BouncingBallDemo> {
  late double marginTop;
  late double margin1;

  void changePosition(Timer t) async {
    setState(() {
      marginTop = marginTop == 0 ? 100 : 0;
    });
  }

  void changePosition1(Timer t) async {
    setState(() {
      margin1 = margin1 == 0 ? 100 : 0;
    });
  }

  @override
  void initState() {
    super.initState();
    marginTop = 0;
    margin1 = 0;

    Timer.periodic(const Duration(seconds: 1), changePosition);
    Timer.periodic(const Duration(seconds: 1), changePosition1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/BackHeader.png"), fit: BoxFit.cover),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: marginTop),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Image(
              image: AssetImage("assets/basketball.png"),
              height: 5,
              width: 5,
            ),
          ),
        ),
      ),
    ));

    // Container(
    //   constraints: BoxConstraints.expand(),
    //   decoration: const BoxDecoration(
    //     image: DecorationImage(
    //         image: AssetImage("assets/BackHeader.png"),
    //         fit: BoxFit.cover,
    //     ),
    //   ),
    // ),
    // Container(
    //   margin: EdgeInsets.only(top: marginTop),
    //   child: Container(
    //     decoration: const BoxDecoration(
    //       shape: BoxShape.circle,
    //       color: Colors.green,
    //     ),
    //     width: 40.0,
    //     height: 40.0,
    //   ),
    // ),
  }
}
