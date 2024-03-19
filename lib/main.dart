import 'package:appshoes/start1.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Start1(),
        color: Color.fromARGB(255, 237, 237, 237),
        debugShowCheckedModeBanner: false);
  }
}
