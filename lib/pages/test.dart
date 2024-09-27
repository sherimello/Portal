import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(child: Icon(CupertinoIcons.cart, color: Colors.white,),
                    alignment: PlaceholderAlignment.middle
                    ),
                    TextSpan(
                      text: "  items in cart",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w900
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
                      WidgetSpan(child: Icon(Icons.history_toggle_off, color: Colors.white,),
                      alignment: PlaceholderAlignment.middle
                      ),
                      TextSpan(
                        text: "  purchase history",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                        )

                      )
                    ]
                  )
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(child: Icon(CupertinoIcons.settings, color: Colors.white,),
                    alignment: PlaceholderAlignment.middle
                    ),
                    TextSpan(
                      text: "  app settings",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w900
                      )

                    )
                  ]
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
