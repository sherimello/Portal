import 'package:flutter/material.dart';
import 'package:untitled1/pages/page_2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Page 1",
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w900
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: GestureDetector(

              onTap: () {
                //go to page 2
                Navigator.of(context).push(MaterialPageRoute(builder: (builder) => Page2()));
              },

              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.black
                ),
                child: Center(
                  child: Text("go to page 2",
                  style: TextStyle(color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
