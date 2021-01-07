import 'package:relativandatomic/CourseCard/CourseCard_1.dart';
import 'package:relativandatomic/course_category.dart';
import 'package:relativandatomic/coursemodel.dart';
import 'package:relativandatomic/main.dart';
import 'package:relativandatomic/recently.dart';
import 'package:flutter/material.dart';
import 'package:relativandatomic/screens/detail/detail_screen_1.dart';
import 'package:relativandatomic/screens/detail/detail_screen_2.dart';
import 'package:relativandatomic/screens/detail/detail_screen_3.dart';
import 'package:relativandatomic/screens/detail/detail_screen_4.dart';
import 'package:relativandatomic/screens/detail/widgets/Simulation/simulation_relativity.dart';

class Resources extends StatelessWidget {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.4, 0.7, 0.5, 0.5],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0xfffafdff),
            Color(0xfffafdff),
            Color(0xffE7FFFF),
            Color(0xffE7FFFF),
          ],
        ),
      ),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        "assets/images/1.jpg",
                      ),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 90,
                          ),
                          Text(
                            "All Subjects",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                letterSpacing: 1.9,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Please select a study subject",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xffE1F5FF),
                                fontSize: 18,
                                letterSpacing: 1.9,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "All Subjects",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        letterSpacing: 1.9,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(10.0),
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen_1(),
                            ),
                          );
                        },
                        child: CourseCategory(
                          imagePath: "assets/images/relativity.png",
                          title: "Relativity",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen_2(),
                            ),
                          );
                        },
                        child: CourseCategory(
                          imagePath: "assets/images/atomicmodel.png",
                          title: "Atomic Model",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen_3(),
                            ),
                          );
                        },
                        child: CourseCategory(
                          imagePath: "assets/images/simulation_ux.png",
                          title: "Simulation",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen_4(),
                            ),
                          );
                        },
                        child: CourseCategory(
                          imagePath: "assets/images/team.png",
                          title: "Team",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Recently Viewed",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        letterSpacing: 1.9,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14,
                        letterSpacing: 1.9,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              shrinkWrap: true,
              padding: EdgeInsets.all(0.0),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Recently();
              },
            ),
          ],
        ),
      ),
    ));
  }
}

class CourseCard extends StatelessWidget {
  final String title, count, imagePath;

  CourseCard(
    this.title,
    this.count,
    this.imagePath,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 140.0,
            width: 350.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(24),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15.0,
                      offset: Offset(0.75, 0.95))
                ],
                color: Colors.grey),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              '$title',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.9,
                  fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
