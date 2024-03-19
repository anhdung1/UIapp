import 'dart:ui';
import 'package:appshoes/widget/app_bar.dart';
import 'package:appshoes/class/shoes.dart';
import 'package:appshoes/variable/variable.dart';
import 'package:appshoes/widget/bottombar.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => FavouriteState();
}

class FavouriteState extends State<Favourite> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(
          Image.asset(
            "asset/image/Icon_love.png",
            color: Colors.black,
            width: 24,
          ),
          const Icon(
            Icons.arrow_back_ios_new,
            size: 17,
          ),
          const Text(
            "Favourite",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Colors.white,
          () {
            setState(() {
              selection = preselection;
              Navigator.pop(context);
            });
          },
          () {},
          const Color.fromARGB(255, 237, 237, 237),
        ),
        body: empty == 0
            ? Container(
                alignment: AlignmentDirectional.center,
                color: const Color.fromARGB(255, 237, 237, 237),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "You don't like any products yet",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              )
            : ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.touch
                    }),
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  color: const Color.fromARGB(255, 237, 237, 237),
                  child: ListView(
                    controller: _controller,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < aaa.length; i++)
                            if (aaa[i].favourite == false)
                              productRecommend(
                                  aaa[i].name, aaa[i].price, aaa[i].image, () {
                                setState(
                                  () {
                                    empty--;
                                    aaa[i].favourite = true;
                                  },
                                );
                              }),
                        ],
                      )
                    ],
                  ),
                )),
        bottomNavigationBar: const Bottombar());
  }
}

productRecommend(String nameProduct, String price, String image, onPressed) {
  return Stack(
    alignment: Alignment.bottomLeft,
    children: [
      Container(
        margin: const EdgeInsets.only(right: 15, top: 15),
        child: Container(
          padding: const EdgeInsets.only(left: 12, top: 10),
          width: 150,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(bottom: 10, top: 5)),
              Stack(alignment: Alignment.bottomCenter, children: [
                RotationTransition(
                    turns: const AlwaysStoppedAnimation(-10 / 360),
                    child: Container(
                      margin: const EdgeInsets.only(top: 60),
                      width: 120,
                      height: 15,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(150, 30)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 189, 189, 189),
                            blurRadius: 4,
                            offset: Offset(3, -3),
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
                    fontSize: 16, fontWeight: FontWeight.w500, height: -0.05),
              )
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 120, bottom: 16),
        width: 16,
        height: 16,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 103, 186),
            borderRadius: BorderRadius.circular(8)),
      ),
      Container(
        margin: const EdgeInsets.only(left: 90, bottom: 16),
        width: 16,
        height: 16,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 200, 0, 0),
            borderRadius: BorderRadius.circular(8)),
      ),
      Container(
          alignment: AlignmentDirectional.topCenter,
          width: 55,
          height: 190,
          child: IconButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(247, 247, 249, 1)),
                minimumSize: MaterialStateProperty.all(const Size(20, 20))),
            onPressed: onPressed,
            icon: Image.asset(
              "asset/image/Icon_love.png",
              width: 16,
              color: Colors.red,
            ),
          )),
    ],
  );
}
