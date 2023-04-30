import 'package:flutter/material.dart';

class BouncingBallDemo2 extends StatefulWidget {
  const BouncingBallDemo2({Key? key}) : super(key: key);

  @override
  State<BouncingBallDemo2> createState() => _BouncingBallDemo2State();
}

class _BouncingBallDemo2State extends State<BouncingBallDemo2> {

  bool play=false;

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
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 1200),
              height: play?100:0,
              left: 0,
              right: 0,
              bottom: play ? MediaQuery.of(context).size.height/2:0,
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
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 1200),
              height: play?100:0,
              left: 0,
              right: 0,
              bottom: play ? MediaQuery.of(context).size.height/2:0,
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
            AnimatedPositioned(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 1200),
              height: play?100:0,
              left: 0,
              right: 0,
              bottom: play ? MediaQuery.of(context).size.height/2:0,
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
            Container(
                alignment: Alignment.bottomCenter,
                child: Image(
                  image: AssetImage("assets/Hole.png"),
                ) //Text
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.play_arrow
        ),
        onPressed: (){
          setState(() {
            play=!play;
          });
        },
      ),
    );
  }
}
