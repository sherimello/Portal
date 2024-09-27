import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt i = 0.obs;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(CupertinoIcons.cart, color: Colors.white,),
                        alignment: PlaceholderAlignment.middle
                      ),
                      TextSpan(
                        text: "  items in cart",
                        style: TextStyle(
                          height: 0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 17
                        )
                      )
                    ]
                  )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 11.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(Icons.history_toggle_off, color: Colors.white,),
                          alignment: PlaceholderAlignment.middle
                        ),
                        TextSpan(
                          text: "  purchase history",
                          style: TextStyle(
                            height: 0,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 17
                          )
                        )
                      ]
                    )
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Image.asset("assets/images/settings.png", width: 25, height: 25, color: Colors.white,),
                        alignment: PlaceholderAlignment.middle
                      ),
                      TextSpan(
                        text: "  items in cart",
                        style: TextStyle(
                          height: 0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 17
                        )
                      )
                    ]
                  )
                ),
              ],
        )),
      ),
    );
  }
}
