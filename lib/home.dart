import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(21, 21, 21, 11),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/bodda.jpg",
                            height: size.width * .27,
                            width: size.width * .27,
                          )),
                    ),
                    Text(
                      "Obaidul Quader",
                      style: TextStyle(
                          fontSize: size.width * .077,
                          fontFamily: "SF-Pro",
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "CGPA 3.98",
                      style: TextStyle(
                          fontSize: size.width * .057,
                          fontFamily: "SF-Pro",
                          fontWeight: FontWeight.w900,
                          color: Colors.red),
                    ),
                    Text(
                      "call me at: +91 420420420",
                      style: TextStyle(
                          fontSize: size.width * .037,
                          fontFamily: "SF-Pro",
                          // fontWeight: FontWeight.w100,
                          color: Colors.black),
                    ),
                    Text(
                      "step.brother@naughtyBoy.com",
                      style: TextStyle(
                          fontSize: size.width * .037,
                          fontWeight: FontWeight.w500,
                          fontFamily: "SF-Pro",
                          color: Colors.black,
                          fontStyle: FontStyle.italic),
                    ),


                    SizedBox(height: 33,),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21.0),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(child: Icon(Icons.engineering)),
                              TextSpan(
                                text: "  current course",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "SF-Pro",
                                    fontSize: size.width * .045),
                              )
                            ]
                          )
                        )
                      ),
                    ),




                    Padding(
                      padding: const EdgeInsets.fromLTRB(21.0, 11, 21, 21),
                      child: Container(
                        width: size.width,
                        // height: size.width,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(31)),
                        child: Padding(
                          padding: const EdgeInsets.all(33.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "course code",
                                    style: TextStyle(
                                        fontSize: size.width * .045,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: "SF-Pro",
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "CSE-2421",
                                    style: TextStyle(
                                        fontSize: size.width * .037,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "SF-Pro",
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "CSE-1230",
                                    style: TextStyle(
                                        fontSize: size.width * .037,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "SF-Pro",
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "CSE-4200",
                                    style: TextStyle(
                                        fontSize: size.width * .037,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "SF-Pro",
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "course name",
                                    style: TextStyle(
                                        fontSize: size.width * .045,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: "SF-Pro",
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Algorithms",
                                    style: TextStyle(
                                        fontSize: size.width * .037,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "SF-Pro",
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Database Management System",
                                    style: TextStyle(
                                        fontSize: size.width * .037,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "SF-Pro",
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "MDP BAL Version",
                                    style: TextStyle(
                                        fontSize: size.width * .037,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "SF-Pro",
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
