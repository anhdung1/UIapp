import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

AppBar appbar(iconRight, iconLeft, Text textTitle, backgroundcolorButton,
    onPressedLeft, onPressedRight, backgroundcolor) {
  return AppBar(
    shadowColor: Colors.transparent,
    surfaceTintColor: const Color.fromRGBO(247, 247, 249, 1),
    title: textTitle,
    centerTitle: true,
    leading: Container(
      padding: const EdgeInsets.only(right: 3),
      height: 100,
      margin: const EdgeInsets.only(
        bottom: 9,
        top: 9,
        left: 15,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(220),
          color: backgroundcolorButton),
      child: IconButton(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: iconLeft,
        onPressed: onPressedLeft,
      ),
    ),
    toolbarHeight: 58,
    actions: [
      Container(
          margin: const EdgeInsets.only(right: 15),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
          ),
          child: IconButton(
              highlightColor: Colors.transparent,
              onPressed: onPressedRight,
              hoverColor: Colors.transparent,
              icon: iconRight))
    ],
    backgroundColor: backgroundcolor,
  );
}
