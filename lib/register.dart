import 'package:flutter/material.dart';
import 'package:appshoes/widget/input_text.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool eye = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 55)),
            const Align(
                child: Column(
              children: [
                Text(
                  "Register Account",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Fill your details or continue with",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text(
                  "social media",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            )),
            const Padding(padding: EdgeInsets.only(top: 25)),
            inputName("Your Name"),
            inputHinText("xxxxxxxx", "", true),
            const Padding(padding: EdgeInsets.only(top: 10)),
            inputName("Email Address"),
            inputHinText("xyz@gmail.com", "", true),
            const Padding(padding: EdgeInsets.only(top: 29)),
            inputName("Password"),
            StatefulBuilder(builder: (context, setState) {
              return inputPassword(eye, () {
                setState(() {
                  eye = !eye;
                });
              }, true);
            }),
            const Padding(padding: EdgeInsets.only(bottom: 50)),
            singIn(
                () {},
                MediaQuery.of(context).size.width,
                const Color.fromRGBO(13, 110, 253, 1),
                "Sign Up  ",
                0,
                Colors.white),
            const Padding(padding: EdgeInsets.only(bottom: 30)),
            singIn(
                () {},
                MediaQuery.of(context).size.width,
                const Color.fromRGBO(247, 247, 249, 1),
                "Sign Up With Google",
                1,
                Colors.black),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already Have Account?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: const Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
