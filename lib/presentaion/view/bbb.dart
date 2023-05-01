import 'dart:async';

import 'package:flutter/material.dart';

class BouncingBallDemo2 extends StatefulWidget {
  const BouncingBallDemo2({Key? key}) : super(key: key);

  @override
  State<BouncingBallDemo2> createState() => _BouncingBallDemo2State();
}

class _BouncingBallDemo2State extends State<BouncingBallDemo2> {

  bool play=false;
  @override
  void initState() {
    super.initState();
    play = true; // تعيين play على القيمة الافتراضية

    // استخدام Timer.periodic لتغيير قيمة play كل 2 ثانية
    Timer.periodic(Duration(milliseconds: 2000), (timer) {
      setState(() {
        play = !play;
      });
    });
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
  }


  // @override
  // void initState() {
  //   super.initState();
  //   // Set _isExpanded to true after a delay of 2 seconds
  //   Future.delayed(Duration(milliseconds: 2), () {
  //     setState(() {
  //       play = true;
  //     });
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Container(
              constraints: BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/BackHeader.png"),
                 fit: BoxFit.cover
                ),
              ),

            ),

            AnimatedPositioned(
              curve: Curves.easeInOutBack,
              // top: play ? 50 : 0,
              duration: Duration(milliseconds: 1200),
              height: play?230:0,
              left: 0,
              right: 0,
              bottom: play ? MediaQuery.of(context).size.height/6:0,
              child: Center(
                child: Container(
                  constraints: BoxConstraints.expand(),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/basketball.png"),
                    ),
                  ),

                ),
              ),
            ),
            AnimatedPositioned(
              curve: Curves.easeInOutBack,
              duration: Duration(milliseconds: 1000),
              height: play?230:0,
              left: 0,
              right: 0,
              bottom: play ? MediaQuery.of(context).size.height/6:0,
              child: Center(
                child: Container(
                  constraints: BoxConstraints.expand(),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/tenisBall.png"),
                    ),
                  ),

                ),
              ),
            ),
            AnimatedPositioned(
              curve: Curves.easeInOutBack,
              duration: Duration(milliseconds: 800),
              height: play?230:0,
              left: 0,
              right: 0,
              bottom: play ? MediaQuery.of(context).size.height/6:0,
              child: Center(
                child: Container(
                  constraints: BoxConstraints.expand(),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/FootBall.png"),
                    ),
                  ),

                ),
              ),
            ),

            Container(
                alignment: Alignment.bottomCenter,
                child: Image(
                  image: AssetImage("assets/Hole.png"),
                ) //Text
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.play_arrow
      //   ),
      //   onPressed: (){
      //     setState(() {
      //       play=!play;
      //     });
      //   },
      // ),
    );
  }
}
//"assets/tenisBall.png"
//"assets/FootBall.png"