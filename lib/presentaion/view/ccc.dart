import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyAnimatedWidget extends StatefulWidget {
  const MyAnimatedWidget({Key? key}) : super(key: key);

  @override
  _MyAnimatedWidgetState createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget> {
  bool play = false;
  bool play1 = false;
  bool play2 = false;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  Future<void> _startAnimation() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      play = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      play = false;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      play1 = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      play1 = false;
    });

    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      play2 = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      play2 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/BackHeader.png"),
                fit: BoxFit.cover),
          ),
        ),
        AnimatedPositioned(
          curve: Curves.easeInOutBack,
          duration: const Duration(milliseconds: 1200),
          height: play ? 230 : 0,
          left: 0,
          right: 0,
          bottom: play ? MediaQuery.of(context).size.height / 6 : 0,
          child: Center(
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/basketball.png"),
                ),
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          curve: Curves.easeInOutBack,
          duration: const Duration(milliseconds: 1200),
          height: play1 ? 230 : 0,
          left: 0,
          right: 0,
          bottom: play1 ? MediaQuery.of(context).size.height / 6 : 0,
          child: Center(
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/tenisBall.png"),
                ),
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          curve: Curves.easeInOutBack,
          duration: const Duration(milliseconds: 1200),
          height: play2 ? 230 : 0,
          left: 0,
          right: 0,
          bottom: play2 ? MediaQuery.of(context).size.height / 6 : 0,
          child: Center(
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/FootBall.png"),
                ),
              ),
            ),
          ),
        ),
        Container(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage("assets/images/Hole.png"),
            ) //Text
            ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage("assets/images/Logo.png"),
                    width: 200,
                    height: 200,
                  ) //Text
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    // height: 10,
                    // width: 10,
                    child: SpinKitThreeBounce(
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Text(
                    "يتم التحميل",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
