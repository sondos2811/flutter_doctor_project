import 'package:doctor/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                          text: "Sign Up to your account.",
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
                    "Full Name",
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
                      labelText: "Enter your Name",
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
                    "Phone Number",
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                    },
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.DIALOG,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: const TextStyle(color: Colors.black),
                    textFieldController: TextEditingController(),
                    formatInput: false,
                    keyboardType: TextInputType.number,
                    inputDecoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your phone number',
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
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
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
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
