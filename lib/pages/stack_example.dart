import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/widgets/top_card.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    RxBool menuClicked = false.obs;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(21.0),
        child: SizedBox(
            width: size.width,
            height: size.height * .51,
            child: Obx(() {
              return Stack(
                children: [
                  Positioned(
                      right: 0,
                      top: 0,
                      child: GestureDetector(
                        onTap: () => menuClicked.value = !menuClicked.value,
                        child: Icon(
                          Icons.menu,
                          size: size.width * .089,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 45.0),
                    child: TopCard(
                      menuClicked: menuClicked,
                      defaultWidth: size.width * .44,
                      dynamicWidth: size.width - 42,
                      defaultHeight: size.height * .51,
                      dynamicHeight: size.height * .51,
                      colors: Colors.black,
                      imageAsset: "assets/images/model1.png",
                      replacementWidget: const SizedBox(),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 355),
                    right: 0,
                    top: menuClicked.value ? 90 : 45,
                    child: Padding(
                      padding: EdgeInsets.all(menuClicked.value ? 17.0 : 0),
                      child: TopCard(
                          menuClicked: menuClicked,
                          defaultWidth: size.width * .44,
                          dynamicWidth: size.width - 42 - 34,
                          defaultHeight: size.height * .27,
                          dynamicHeight: size.height * .51 - 90 - 34,
                          colors: Color(0xff626262),
                          imageAsset: "assets/images/model2.png",
                          replacementWidget: AnimatedOpacity(
                            duration: const Duration(milliseconds: 355),
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
                                        alignment: PlaceholderAlignment.middle),
                                    TextSpan(
                                        text: "  items in cart",
                                        style: TextStyle(
                                            height: 0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 17))
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
                                              height: 0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 17))
                                    ])),
                                  ),
                                  Text.rich(TextSpan(children: [
                                    WidgetSpan(
                                        child: Image.asset(
                                          "assets/images/settings.png",
                                          width: 25,
                                          height: 25,
                                          color: Colors.white,
                                        ),
                                        alignment: PlaceholderAlignment.middle),
                                    TextSpan(
                                        text: "  items in cart",
                                        style: TextStyle(
                                            height: 0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 17))
                                  ])),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                  AnimatedPositioned(
                      duration: const Duration(milliseconds: 355),
                      right: menuClicked.value ? 27 : 0,
                      bottom: menuClicked.value
                          ? size.height * .51 - size.width * .1 - 45 - 11
                          : 0,
                      child: TopCard(
                          menuClicked: menuClicked,
                          defaultWidth: size.width * .44,
                          dynamicWidth: size.width * .1,
                          defaultHeight: size.height * .18,
                          dynamicHeight: size.width * .1,
                          colors: Colors.grey,
                          imageAsset: "assets/images/model4.png",
                          replacementWidget: AnimatedOpacity(
                            duration: const Duration(milliseconds: 355),
                            opacity: menuClicked.value ? 1 : 0,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/images/model4.png",
                                  fit: BoxFit.cover,
                                )),
                          ))),
                ],
              );
            })),
      )),
    );
  }
}
