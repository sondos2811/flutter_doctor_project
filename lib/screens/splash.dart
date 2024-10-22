import 'package:doctor/screens/login.dart';
import 'package:doctor/screens/sign_up.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              "Gerda",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Container(
              height: 100,
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      style: ButtonStyle(
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          )),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.blue)),
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 300,
                    child: TextButton(
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )),
                        side: WidgetStateProperty.all(BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        )),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
