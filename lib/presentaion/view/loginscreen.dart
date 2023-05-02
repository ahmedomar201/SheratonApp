import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage("assets/images/Logo.png"),
                width: 200,
                height: 200,
              ),
            ),
            Text("النادي..دلوقتي قربلك",
            style: TextStyle(
              fontSize: 20,
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text("رقم العضوية",
                style: TextStyle(
                  fontSize: 20,
                ),),
            ),

          ],
        ),
      ),
    );
  }
}
