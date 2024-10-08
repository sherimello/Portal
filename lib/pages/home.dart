import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool shouldShowAllCourses = false;
  List<String> codes = [], names = [];

  void fetchCourseCodes() {
    //gets the course codes from an API call and assigns those to codes=[]

    codes = [
      "CSE-4100",
      "CSE-4200",
      "CSE-4300",
      "CSE-4100",
      "CSE-4200",
      "CSE-4300",
      "CSE-4100",
      "CSE-4200",
      "CSE-4300",
    ];
  }

  void fetchCourseNames() {
    //gets the course names from an API call and assigns those to names=[]

    names = [
      "Compiler",
      "Computer Architecture Lab - 1",
      "Computer Security",
      "Compiler",
      "Computer Architecture Lab - 1",
      "Computer Security",
      "Compiler",
      "Computer Architecture Lab - 1",
      "Computer Security",
    ];
  }

  List<Widget> generateCourseUI(List<String> list, var size) {

    List<Widget> w = [];
    //shortcut for if else
    int limit = shouldShowAllCourses ? list.length : 3;

    for (int i = 0; i < limit; i++) {
      w.add(
          Text(
            list[i],
            style: TextStyle(
                fontSize: size.width * .045),
          )
      );
    }
    return w;
  }



  @override
  void initState() {
    //gets called when the screen comes to live for the first time...
    // TODO: implement initState
    super.initState();
    fetchCourseCodes();
    fetchCourseNames();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "i.PORTAL",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: size.width * .097,
                      color: Colors.teal),
                ),
                shouldShowAllCourses ? const SizedBox() : SizedBox(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 21,
                      ),
                      Container(
                        width: size.width * .31,
                        height: size.width * .31,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(100)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/handsome.png",
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      Text(
                        "Shahriar Rahman",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * .055),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: size.width * .1,
                              width: size.width * .41,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.red),
                              child: Center(
                                child: Text(
                                  "CGPA: 3.428",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * .045),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              height: size.width * .1,
                              width: size.width * .41,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.red),
                              child: Center(
                                child: Text(
                                  "4th Sem.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * .045),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "+8801900000000",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: size.width * .041),
                      ),
                      Text(
                        "+bleh@gmail.com",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * .041,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(31, 31, 31, 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(children: [
                          WidgetSpan(
                              child: Icon(Icons.local_fire_department_rounded),
                              alignment: PlaceholderAlignment.middle),
                          TextSpan(
                            text: " current courses",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: size.width * .045,
                            ),
                          )
                        ])),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              shouldShowAllCourses = !shouldShowAllCourses;
                            });
                          },
                          child: Text(shouldShowAllCourses ? "show less" : "show all",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w900
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(21, 0, 21, 21),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 555),
                    width: size.width,
                    height: shouldShowAllCourses ? size.width : size.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.grey.shade300),
                    child: Padding(
                      padding: const EdgeInsets.all(21.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Course Code",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * .049),
                                    ),
                                    const SizedBox(
                                      height: 11,
                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: generateCourseUI(codes, size),
                                    )
                                  ]),
                            ),
                            const SizedBox(
                              width: 21,
                            ),
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Course Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * .049),
                                  ),
                                  const SizedBox(
                                    height: 11,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: generateCourseUI(names, size),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
