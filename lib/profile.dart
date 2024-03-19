import 'package:appshoes/variable/variable.dart';
import 'package:appshoes/widget/app_bar.dart';
import 'package:appshoes/widget/input_text.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(
          const Icon(
            Icons.done,
          ),
          const Icon(
            Icons.arrow_back_ios_new,
            size: 17,
          ),
          const Text(
            "Nofitications",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          Colors.white, () {
        selection = preselection;
        Navigator.pop(context);
      }, () {}, Colors.white),
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 35)),
            Container(
                alignment: AlignmentDirectional.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("asset/image/avatar.jpg"),
                )),
            const Padding(padding: EdgeInsets.only(top: 20)),
            inputName("Your Name"),
            inputHinText("", "Lưu Văn Dũng", false),
            const Padding(padding: EdgeInsets.only(top: 20)),
            inputName("Email Address"),
            inputHinText("", "Dungvl76@gmail.com", false),
            const Padding(padding: EdgeInsets.only(top: 20)),
            inputName("Password"),
            inputPassword(eye, () {
              setState(() {
                eye = !eye;
              });
            }, false),
            const Padding(padding: EdgeInsets.only(top: 40)),
            TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  minimumSize: MaterialStateProperty.all(
                      Size(MediaQuery.of(context).size.width, 55)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[400])),
              onPressed: () {},
              child: const Text(
                "Change Information",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
