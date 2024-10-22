import 'package:doctor/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Welcome!\n",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "Login to your account.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 179, 191, 203),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 5),
                  child: Text(
                    "Email Address",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 41, 45, 50),
                    ),
                  ),
                ),
              ),
              Container(
                height: 51,
                width: 360,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 242, 245),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter your Email",
                    ),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 5),
                  child: Text(
                    "Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 41, 45, 50),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 51,
                width: 360,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 242, 245),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter your Password",
                    ),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 106, 121, 138),
                  ),
                ),
              ),
              const Spacer(),
              const Spacer(),
              SizedBox(
                width: 348,
                height: 16,
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 1,
                      color: const Color.fromARGB(255, 213, 222, 231),
                    ),
                    const Spacer(),
                    const Text(
                      "Hungry? Let's continue with these",
                      style: TextStyle(
                        color: Color.fromARGB(255, 106, 121, 138),
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 60,
                      height: 1,
                      color: const Color.fromARGB(255, 213, 222, 231),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  const Spacer(),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.google),
                    onPressed: () {},
                    iconSize: 58,
                    color: Colors.red,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.apple),
                    onPressed: () {},
                    iconSize: 58,
                    color: Colors.black,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.facebook),
                    onPressed: () {},
                    iconSize: 58,
                    color: Colors.blue,
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(),
              const Spacer(),
              SizedBox(
                width: 232,
                height: 58,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
