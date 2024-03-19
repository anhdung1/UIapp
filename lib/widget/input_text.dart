import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

inputPassword(eye, onPress, change) {
  return Flexible(
      child: Container(
    margin: const EdgeInsets.only(top: 10),
    height: 48,
    decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 249, 249, 1),
        borderRadius: BorderRadius.circular(14)),
    child: TextField(
      obscureText: !eye,
      decoration: InputDecoration(
          hintText: "********",
          border: InputBorder.none,
          enabled: change,
          contentPadding: const EdgeInsets.only(left: 15, top: 11),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: onPress,
              icon: eye
                  ? const Icon(Icons.remove_red_eye)
                  : Image.asset("asset/image/invisible.png"),
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent)),
            ),
          )),
    ),
  ));
}

Widget inputHinText(hintext, label, change) {
  return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 48,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(247, 249, 249, 1),
          borderRadius: BorderRadius.circular(14)),
      child: TextField(
        decoration: InputDecoration(
            enabled: change,
            hintText: hintext,
            labelText: label,
            hintStyle: const TextStyle(
                color: Color.fromRGBO(106, 106, 106, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(left: 15, bottom: 5)),
      ));
}

Widget inputName(String name) {
  return Text(
    name,
    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
  );
}

singIn(onPressed, width, backgroundcolor, nameButton, icon, textColor) {
  return SizedBox(
    width: width,
    height: 50,
    child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            backgroundColor: MaterialStateProperty.all(backgroundcolor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == 1
                ? Image.asset(
                    "asset/image/google_icon.png",
                    width: 24,
                    height: 24,
                  )
                : const Text(""),
            icon == 1
                ? const Padding(padding: EdgeInsets.only(right: 12))
                : const Text(""),
            Text(
              nameButton,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w600, color: textColor),
            ),
          ],
        )),
  );
}
