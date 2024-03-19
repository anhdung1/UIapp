import 'package:flutter/material.dart';
import 'package:appshoes/widget/input_text.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                  "Hello Again!",
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
            inputName("Email Address"),
            inputHinText("xyz@gmail.com", "", true),
            const Padding(padding: EdgeInsets.only(top: 30)),
            inputName("Password"),
            StatefulBuilder(builder: (context, setState) {
              return inputPassword(eye, () {
                setState(() {
                  eye = !eye;
                });
              }, true);
            }),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                "Recovery Password",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 30)),
            singIn(
                () {},
                MediaQuery.of(context).size.width,
                const Color.fromRGBO(13, 110, 253, 1),
                "Sign In",
                0,
                Colors.white),
            const Padding(padding: EdgeInsets.only(bottom: 30)),
            singIn(
                () {},
                MediaQuery.of(context).size.width,
                const Color.fromRGBO(247, 247, 249, 1),
                "Sign In With Google",
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
              "New User?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: const Text(
                  "Create Account",
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
