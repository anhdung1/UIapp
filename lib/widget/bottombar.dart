import 'package:appshoes/favourite.dart';
import 'package:appshoes/my_home.dart';
import 'package:appshoes/nofitications.dart';
import 'package:appshoes/profile.dart';
import 'package:appshoes/sneaker_shop.dart';
import 'package:appshoes/variable/variable.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        elevation: 0,
        height: 60,
        shape: const CircularNotchedRectangle(),
        notchMargin: 0,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.white,
        child: StatefulBuilder(builder: (context, setState) {
          return Row(
            children: [
              bottomiconbutton(() {
                preselection = selection;
                selection = 1;

                if (preselection != selection) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHome()),
                  );
                }
              }, "asset/image/Icon_home.png", 1),
              bottomiconbutton(() {
                preselection = selection;
                selection = 2;

                if (preselection != selection) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Favourite()),
                  );
                }
              }, "asset/image/Icon_love.png", 2),
              bottomiconbutton(() {
                preselection = selection;
                selection = 3;

                if (preselection != selection) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SneakerShop()),
                  );
                }
              }, "asset/image/icon_shop.png", 3),
              bottomiconbutton(() {
                preselection = selection;
                selection = 4;

                if (preselection != selection) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Nofitications()),
                  );
                }
              }, "asset/image/icon_bell.png", 4),
              bottomiconbutton(() {
                preselection = selection;
                selection = 5;

                if (preselection != selection) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                }
              }, "asset/image/icon_profile.png", 5),
            ],
          );
        }));
  }

  bottomiconbutton(onPressed, asset, color) {
    return Expanded(
      child: IconButton(
          highlightColor: Colors.white,
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: onPressed,
          icon: Image.asset(
            asset,
            color: selection == color
                ? Colors.blue[300]
                : const Color.fromRGBO(112, 123, 129, 1),
            width: 24,
            height: 24,
          )),
    );
  }
}
