import 'dart:ui';
import 'package:appshoes/class/shoes.dart';
import 'package:appshoes/variable/variable.dart';

import 'package:flutter/material.dart';
import 'package:appshoes/widget/app_bar.dart';

class SneakerShop extends StatefulWidget {
  const SneakerShop({super.key});

  @override
  State<SneakerShop> createState() => _SneakerShopState();
}

class _SneakerShopState extends State<SneakerShop> {
  final ScrollController _controller = ScrollController();

  List<Widget> product = <Widget>[];
  int count = aaa.length;

  String name = "Nike Air Max 270 Essential";
  String price = "\$179.39";
  String image = "asset/image/orangeShoes.png";
  String typeShoes = "Men's Shoes";
  String introduce =
      "The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(
        Image.asset(
          "asset/image/icon_shop.png",
          color: Colors.black,
          width: 24,
        ),
        const Icon(
          Icons.arrow_back_ios_new,
          size: 17,
        ),
        const Text(
          "Sneaker Shop",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Colors.white,
        () {
          selection = preselection;
          Navigator.pop(context);
        },
        () {},
        const Color.fromARGB(255, 237, 237, 237),
      ),
      body: Container(
        color: const Color.fromARGB(255, 237, 237, 237),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: StatefulBuilder(
            builder: (context, setState) {
              return Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 70,
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontSize: 26,
                            // height: 2,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(43, 43, 43, 1)),
                      ),
                    ),
                    Text(
                      typeShoes,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 2,
                          color: Color.fromRGBO(112, 123, 129, 1)),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 5)),
                    Text(
                      price,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(43, 43, 43, 1)),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15)),
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Container(
                          height: 150,
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 70,
                            decoration: BoxDecoration(
                                // color: Colors.red,
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 0, 108, 196),
                                    style: BorderStyle.solid,
                                    width: 2),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(
                                        MediaQuery.of(context).size.width / 2 -
                                            15,
                                        35))),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            height: 100,
                            margin: const EdgeInsets.only(bottom: 42),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 237, 237, 237),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 237, 237, 237),
                                      offset: Offset(0, 13),
                                      blurRadius: 4)
                                ]),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.topCenter,
                          child: RotationTransition(
                            turns: const AlwaysStoppedAnimation(-22 / 360),
                            child: Container(
                              width: 180,
                              height: 80,
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 193, 193, 193),
                                      offset: Offset(0, -23),
                                      blurRadius: 30,
                                    )
                                  ],
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(100, 40))),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.topCenter,
                          child: RotationTransition(
                              turns: const AlwaysStoppedAnimation(-24 / 360),
                              child: Container(
                                padding:
                                    const EdgeInsets.only(bottom: 59, left: 20),
                                child: Image.asset(
                                  image,
                                  height: 120,
                                ),
                              )),
                        )
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15)),
                    SizedBox(
                      height: 100,
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context).copyWith(
                            dragDevices: {
                              PointerDeviceKind.mouse,
                              PointerDeviceKind.touch
                            }),
                        child: ListView(
                          controller: _controller,
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          children: [
                            Row(children: [
                              for (int i = 0; i < aaa.length - 1; i++)
                                inforationProduct(() {
                                  setState(() {
                                    image = aaa[i].image;
                                    price = aaa[i].price;
                                    name = aaa[i].name;
                                    introduce = aaa[i].introduce;
                                    typeShoes = aaa[i].typeShoes;
                                    id = aaa[i].id;
                                  });
                                }, aaa[i].imageSmall)
                            ])
                          ],
                        ),
                      ),
                    ),
                    Text(
                      introduce,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(112, 123, 129, 1)),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            "Read More",
                            style: TextStyle(
                                color: Color.fromRGBO(13, 110, 253, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ))
                  ],
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 237, 237, 237),
        elevation: 0,
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(bottom: 10, left: 10),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 227, 227, 227),
                  borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  // padding: EdgeInsets.only(left: 100),
                  onPressed: () {
                    setState(() {
                      color = !color;
                      aaa[id].favourite = !aaa[id].favourite;
                    });
                  },
                  child: Image.asset(
                    "asset/image/Icon_love.png",
                    width: 24,
                    color: color ? Colors.red[400] : Colors.black,
                  )),
            ),
            const Padding(padding: EdgeInsets.only(left: 30)),
            Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 50,
                width: MediaQuery.of(context).size.width - 135,
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue[700])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "asset/image/icon_shop.png",
                          width: 24,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 20)),
                        const Text(
                          "Add To Cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }

  inforationProduct(onPressed, asset) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          width: 56,
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 2),
                    color: Color.fromARGB(255, 193, 193, 193),
                    blurRadius: 2)
              ]),
          child: InkWell(
            onTap: onPressed,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(-30 / 360),
              child: Image.asset(asset),
            ),
          ),
        ),
      ],
    );
  }
}
