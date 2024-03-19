import 'package:appshoes/class/shoes.dart';
import 'package:appshoes/widget/app_bar.dart';
import 'package:appshoes/variable/variable.dart';
import 'package:flutter/material.dart';

class Nofitications extends StatefulWidget {
  const Nofitications({super.key});

  @override
  State<Nofitications> createState() => _NofiticationsState();
}

class _NofiticationsState extends State<Nofitications> {
  String minute = "";

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(
          Image.asset("asset/image/icon_delete.png"),
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
      }, () {}, const Color.fromRGBO(247, 247, 249, 1)),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          color: const Color.fromRGBO(247, 247, 249, 1),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Recent",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              productSale(),
              const Padding(padding: EdgeInsets.only(top: 15)),
              productSale(),
              const Padding(padding: EdgeInsets.only(top: 15)),
              const Text(
                "Yesterday",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              productSale(),
              const Padding(padding: EdgeInsets.only(top: 15)),
              productSale(),
            ],
          ),
        ),
      ),
    );
  }

  productSale() {
    return Stack(alignment: AlignmentDirectional.centerStart, children: [
      Container(
        height: 105,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
      ),
      StatefulBuilder(
        builder: (context, setState) {
          // minute = DateTime.now().minute.toString();

          // Timer.periodic(const Duration(), (Timer t) {
          //   setState(() {
          //     minute = DateTime.now().minute.toString();
          //     dispose();
          //   });
          // });
          return Container(
            width: MediaQuery.of(context).size.width - 45,
            height: 85,
            alignment: AlignmentDirectional.topEnd,
            child: const Text("1 min ago"),
          );
        },
      ),
      Row(children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          width: 85,
          height: 87,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(247, 247, 249, 1),
              borderRadius: BorderRadius.circular(14)),
          child: RotationTransition(
            turns: const AlwaysStoppedAnimation(30 / 360),
            child: Image.asset(
              "asset/image/purpleShoes.png",
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 30)),
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 150,
              child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "We Have New Products With Offers",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(13, 110, 253, 1)),
                  )),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 9)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  aaa[0].price,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 35)),
                Text(
                  aaa[0].pricesale,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 130, 130, 130),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        )
      ])
    ]);
  }

  @override
  void initState() {
    super.initState();

    // sets first value
  }
}
