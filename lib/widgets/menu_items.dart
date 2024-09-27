import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuItems extends StatelessWidget {

  final RxBool menuClicked;

  const MenuItems({super.key, required this.menuClicked});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 355),
        curve: Curves.easeOut,
        opacity: menuClicked.value ? 1 : 0,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                      CupertinoIcons.cart,
                      color: Colors.white,
                    ),
                    alignment:
                    PlaceholderAlignment.middle),
                TextSpan(
                    text: "  items in cart",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w900))
              ])),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 11.0),
                child: Text.rich(TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                        Icons.history_toggle_off,
                        color: Colors.white,
                      ),
                      alignment:
                      PlaceholderAlignment.middle),
                  TextSpan(
                      text: "  purchase history",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w900))
                ])),
              ),
              Text.rich(TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                      CupertinoIcons.settings,
                      color: Colors.white,
                    ),
                    alignment:
                    PlaceholderAlignment.middle),
                TextSpan(
                    text: "  app settings",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w900))
              ])),
            ],
          ),
        ),
      ),
    );
  }
}
