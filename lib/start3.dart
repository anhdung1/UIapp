import 'package:appshoes/my_home.dart';
import 'package:flutter/material.dart';

class Start3 extends StatelessWidget {
  const Start3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                alignment: AlignmentDirectional.topStart,
                padding: const EdgeInsets.only(top: 116, left: 28),
                child: Image.asset(
                  "asset/image/image_4_3.png",
                  width: 90,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                alignment: AlignmentDirectional.topStart,
                padding: const EdgeInsets.only(top: 110, left: 28),
                child: Image.asset(
                  "asset/image/solid3.png",
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                alignment: AlignmentDirectional.topEnd,
                padding: const EdgeInsets.only(top: 116, right: 30),
                child: Image.asset(
                  "asset/image/image_4_1.png",
                  width: 45,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  "asset/image/start3.png",
                  width: 400,
                ),
              ),
            ),
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 370)),
                Container(
                  width: 190,
                  height: 15,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.elliptical(100, 8)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(-10, -10),
                          blurRadius: 8,
                          color: Color.fromRGBO(16, 16, 16, 0.25),
                        ),
                      ]),
                ),
                const Padding(padding: EdgeInsets.only(top: 25)),
                const Text(
                  "You Have the",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const Text(
                  "Power To",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.only(top: 18)),
                const Text(
                  "There Are Many Beautiful And Attractive ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                const Text(
                  "Plants To Your Room",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.only(top: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 28,
                      height: 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(255, 178, 26, 1)),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 10)),
                    Container(
                      width: 28,
                      height: 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(255, 178, 26, 1)),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 10)),
                    Container(
                      width: 40,
                      height: 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        height: 70,
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHome()));
          },
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))),
          child: const Text(
            "Next",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
