import 'package:appshoes/start2.dart';
import 'package:flutter/material.dart';

class Start1 extends StatelessWidget {
  const Start1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [
              const Padding(padding: EdgeInsets.only(top: 121)),
              Align(
                alignment: AlignmentDirectional.topCenter,
                child: titleNike("WELLCOME TO"),
              ),
              titleNike("NIKE"),
              const Padding(padding: EdgeInsets.only(top: 15)),
              Image.asset(
                "asset/image/image_3.png",
                width: 134,
              ),
              const Padding(padding: EdgeInsets.only(top: 300)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
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
                    width: 28,
                    height: 3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(255, 178, 26, 1)),
                  )
                ],
              )
            ]),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                  margin: const EdgeInsets.only(top: 120),
                  child: Image.asset(
                    "asset/image/image_5_1.png",
                    width: 350,
                  )),
            ),
            Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Container(
                  padding: const EdgeInsets.only(left: 29, top: 315),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "asset/image/image_4_1.png",
                          width: 44,
                        ),
                        const Padding(padding: EdgeInsets.only(top: 205)),
                        Image.asset(
                          "asset/image/image_4_2.png",
                          width: 90,
                        ),
                      ]),
                )),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                padding: const EdgeInsets.only(right: 20, top: 490),
                child: Image.asset(
                  "asset/image/image_4_3.png",
                  width: 90,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                padding: const EdgeInsets.only(top: 270),
                child: Image.asset(
                  "asset/image/image_6.png",
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.transparent,
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Start2()));
          },
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))),
          child: const Text(
            "Get Started",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

titleNike(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w900,
      color: Color.fromRGBO(236, 236, 236, 1),
    ),
  );
}
