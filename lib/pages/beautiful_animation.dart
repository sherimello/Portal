import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/widgets/menu_items.dart';
import 'package:untitled1/widgets/top_card.dart';

class BeautifulAnimation extends StatelessWidget {
  const BeautifulAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    RxBool menuClicked = false.obs;

    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(21.0),
              child: Obx(
                () => SizedBox(
                  width: size.width,
                  height: size.height * .55 + 45,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          menuClicked.value = !menuClicked.value;
                        },
                        child: const Icon(
                          Icons.menu,
                          size: 41,
                        ),
                      ),
                      Positioned(
                        top: 45,
                        child: TopCard(
                            menuClicked: menuClicked,
                            defaultWidth: size.width * .44,
                            dynamicWidth: size.width - 42,
                            defaultHeight: size.height * .55,
                            dynamicHeight: size.height * .55,
                            colors: Colors.black,
                            imageAsset: "assets/images/model1.png",
                            replacementWidget: const SizedBox()),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 555),
                        curve: Curves.easeOut,
                        right: 0,
                        top: menuClicked.value ? 110 : 45,
                        child: Padding(
                          padding: EdgeInsets.all(menuClicked.value ? 11.0 : 0),
                          child: TopCard(
                            menuClicked: menuClicked,
                            defaultWidth: size.width * .44,
                            dynamicWidth: size.width - 42 - 22,
                            defaultHeight: size.height * .31,
                            dynamicHeight: size.height * .55 - 65 - 22,
                            colors: Color(0xff595959),
                            imageAsset: "assets/images/model2.png",
                            replacementWidget:
                                MenuItems(menuClicked: menuClicked),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 355),
                        curve: Curves.easeOut,
                        right: menuClicked.value ? 19 : 0,
                        bottom: menuClicked.value
                            ? size.height * .55 +
                                45 -
                                size.width * .125 -
                                45 -
                                19
                            : 0,
                        child: TopCard(
                            menuClicked: menuClicked,
                            defaultWidth: size.width * .44,
                            dynamicWidth: size.width * .125,
                            defaultHeight: size.height * .235,
                            dynamicHeight: size.width * .125,
                            colors: Colors.grey,
                            imageAsset: "assets/images/model4.png",
                            replacementWidget: AnimatedOpacity(
                              duration: const Duration(milliseconds: 355),
                              curve: Curves.easeOut,
                              opacity: menuClicked.value ? 1 : 0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset("assets/images/model4.png"),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ))),
    );
  }
}
