import 'dart:ui';

import 'package:appshoes/class/shoes.dart';
import 'package:appshoes/widget/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:appshoes/widget/app_bar.dart';
import 'package:appshoes/variable/variable.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final ScrollController _controller = ScrollController();
  final ScrollController _controller1 = ScrollController();
  List<Widget> product = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color.fromARGB(255, 237, 237, 237),
        appBar: appbar(
            Image.asset(
              "asset/image/icon_shop.png",
              color: Colors.black,
              height: 24,
              width: 24,
            ),
            Image.asset(
              "asset/image/menu_icon.png",
              height: 18,
            ),
            const Text(
              "Explore",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            Colors.transparent,
            () {},
            () {},
            const Color.fromARGB(255, 237, 237, 237)),
        body: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 237, 237, 237),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 50),
                    bottomRight: Radius.elliptical(200, 50))),
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch
              }),
              child: ListView(
                  controller: _controller1,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    height: 52,
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: "Looking for shoes",
                                          hintStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.only(
                                                left: 30, right: 30),
                                            child: Icon(Icons.search),
                                          ),
                                          contentPadding:
                                              EdgeInsets.only(top: 10),
                                          border: InputBorder.none),
                                    ))),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blue),
                              width: 52,
                              height: 52,
                              child: Image.asset("asset/image/find_icon.png"),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12, right: 0),
                          height: 40,
                          child: ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context).copyWith(
                              dragDevices: {
                                PointerDeviceKind.mouse,
                                PointerDeviceKind.touch
                              },
                            ),
                            child: ListView(
                              controller: _controller,
                              physics: const AlwaysScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              children: [
                                Row(children: [
                                  selectionButton(
                                      "All Shoes", Colors.white, Colors.black,
                                      () {
                                    setState(() {
                                      selection = 1;
                                    });
                                  }),
                                  selectionButton("Outdoor", Colors.blue,
                                      Colors.white, () {}),
                                  selectionButton("Tennis", Colors.white,
                                      Colors.black, () {}),
                                  selectionButton("Walking", Colors.blue,
                                      Colors.white, () {}),
                                  selectionButton("Sale", Colors.white,
                                      Colors.black, () {}),
                                  selectionButton("Cheap", Colors.blue,
                                      Colors.white, () {}),
                                ])
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 15)),
                        titlePart1("Popular Shoes", "See all"),
                        SizedBox(
                          height: 220,
                          child: ScrollConfiguration(
                              behavior: ScrollConfiguration.of(context)
                                  .copyWith(dragDevices: {
                                PointerDeviceKind.mouse,
                                PointerDeviceKind.touch
                              }),
                              child: ListView(
                                controller: _controller,
                                physics: const AlwaysScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  for (int i = 0; i < aaa.length; i++)
                                    productRecommend(
                                        aaa[i].name, aaa[i].price, aaa[i].image,
                                        () {
                                      setState(() {
                                        aaa[i].favourite = !aaa[i].favourite;
                                        if (aaa[i].favourite == false) {
                                          empty++;
                                        } else {
                                          empty--;
                                        }
                                      });
                                    }, aaa[i].favourite)
                                ],
                              )),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 15)),
                        titlePart1("New Arrivals", "See all"),
                        productSale(),
                      ],
                    ),
                  ]),
            )),
        // ignore: prefer_const_constructors
        bottomNavigationBar: Bottombar());
  }

  productRecommend(
      String nameProduct, String price, String image, onPressed, color) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: Container(
            padding: const EdgeInsets.only(left: 12, top: 10),
            width: 162,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                Stack(alignment: Alignment.bottomCenter, children: [
                  RotationTransition(
                      turns: const AlwaysStoppedAnimation(-10 / 360),
                      child: Container(
                        width: 120,
                        height: 15,
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(150, 30)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 189, 189, 189),
                              blurRadius: 4,
                              offset: Offset(12, -1),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    width: 130,
                    height: 70,
                    padding: const EdgeInsets.only(left: 10),
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(-10 / 360),
                      child: Image.asset(
                        image,
                        width: 0,
                        height: 53,
                      ),
                    ),
                  ),
                ]),
                const Padding(padding: EdgeInsets.only(bottom: 17)),
                const Text(
                  "BEST SELLER",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      height: 1),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 5)),
                SizedBox(
                  height: 46,
                  child: Text(
                    nameProduct,
                    style: const TextStyle(
                      height: 1.1,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 111, 111, 111),
                    ),
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500, height: 0.4),
                )
              ],
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(right: 10),
            width: 37,
            height: 37,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 119, 215),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(14),
                    topLeft: Radius.circular(14))),
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10))))),
                child: Image.asset(
                  "asset/image/plus.png",
                  color: Colors.white,
                ))),
        StatefulBuilder(builder: (context, setState) {
          return Container(
              alignment: AlignmentDirectional.topStart,
              width: 172,
              height: 188,
              child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    minimumSize: MaterialStateProperty.all(const Size(20, 20))),
                onPressed: onPressed,
                child: Image.asset(
                  "asset/image/Icon_love.png",
                  width: 16,
                  color: color ? Colors.black : Colors.red,
                ),
              ));
        })
      ],
    );
  }
}

Widget titlePart1(String titlePart1, String seeAll) {
  return Row(
    children: [
      Expanded(
        child: Text(
          titlePart1,
          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
        ),
      ),
      Text(
        seeAll,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(13, 110, 253, 1)),
      ),
      const Padding(padding: EdgeInsets.only(right: 10))
    ],
  );
}

selectionButton(
    String nameSelection, Color buttonColor, Color textColor, onPressed) {
  return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 108,
      height: 40,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            backgroundColor: MaterialStateProperty.all(buttonColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        child: Text(
          nameSelection,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: textColor),
        ),
      ));
}

productSale() {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    height: 114,
    child: Stack(
      children: [
        Container(
          height: 130,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Container(
            height: 95,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            width: 170,
            height: 77,
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(16)),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Summer Sale",
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w500, height: 0.7),
                ),
                Text(
                  "15% OFF",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(107, 77, 197, 1),
                      height: 0),
                )
              ],
            ),
          ),
        ),
        Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(right: 6),
              height: 45,
              width: 15.5,
              child: Image.asset(
                "asset/image/star.png",
                width: 15.5,
                height: 16.7,
              ),
            )),
        Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Container(
              margin: const EdgeInsets.only(left: 7),
              height: 55,
              child: Image.asset(
                "asset/image/star.png",
                width: 15.5,
                height: 16.7,
              ),
            )),
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: Container(
            margin: const EdgeInsets.only(right: 25),
            width: 110,
            child: Image.asset("asset/image/shoes_sale.png"),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Container(
            width: 82,
            height: 6,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  offset: Offset(-37, -10),
                  color: Color.fromRGBO(16, 16, 16, 0.3))
            ], borderRadius: BorderRadius.all(Radius.elliptical(82, 6))),
          ),
        ),
        Align(
            alignment: AlignmentDirectional.topCenter,
            child: Container(
              margin: const EdgeInsets.only(right: 37, top: 5),
              height: 55,
              child: Image.asset(
                "asset/image/star.png",
                width: 15.5,
                height: 16.7,
              ),
            )),
        Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(),
              height: 26,
              width: 40,
              child: Image.asset(
                "asset/image/star.png",
                width: 15.5,
                height: 16.7,
              ),
            )),
        Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(),
              height: 75,
              width: 90,
              // color: Colors.amber,
              child: Image.asset(
                "asset/image/new_text.png",
                width: 26,
                height: 26,
              ),
            )),
      ],
    ),
  );
}
