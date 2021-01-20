import 'package:relativandatomic/CourseCard/CourseCard_1.dart';
import 'package:relativandatomic/TeamKotaKortak.dart';
import 'package:relativandatomic/course_category.dart';
import 'package:relativandatomic/coursemodel.dart';
import 'package:relativandatomic/main.dart';
import 'package:relativandatomic/recently%202.dart';
import 'package:relativandatomic/recently%203.dart';
import 'package:relativandatomic/recently.dart';
import 'package:flutter/material.dart';
import 'package:relativandatomic/screens/detail/detail_screen_1.dart';
import 'package:relativandatomic/screens/detail/detail_screen_2.dart';
import 'package:url_launcher/url_launcher.dart';

class Resources extends StatelessWidget {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                        "assets/images/psychadellic.png",
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
                            "Relativitas dan Model Atom",
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
                            "Pilih Subjek Pelajaran",
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
                    "Semua Subjek",
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
                          title: "Relativitas",
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
                          title: "Model Atom",
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
                    "Simulasi",
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
              padding: EdgeInsets.all(0.0),
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                InkWell(
                  onTap: () => launch(
                      'https://www.wolframcloud.com/obj/0892198f-1d13-4f6e-814c-08b27a8c5757'),
                  child: Recently(),
                ),
              ],
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(0.0),
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                InkWell(
                  onTap: () => launch(
                      'https://www.wolframcloud.com/obj/c92a7184-afa9-4e5b-8745-95bd108b4591'),
                  child: Recently2(),
                ),
              ],
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(0.0),
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                InkWell(
                  onTap: () => launch(
                      'https://www.wolframcloud.com/obj/cdbc880a-1e38-403e-9829-f88257e82fe9'),
                  child: Recently3(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Team",
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
              shrinkWrap: true,
              padding: EdgeInsets.all(5.0),
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  height: 235,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      InkWell(
                        onTap: () =>
                            launch('https://www.instagram.com/kimiskim23/'),
                        child: Teamkotak(
                          imagePath: "assets/images/kimbo.png",
                          title: "Naufal Al-Hakim",
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            launch('https://www.instagram.com/wafaputriaulia/'),
                        child: Teamkotak(
                          imagePath: "assets/images/wafa.png",
                          title: "Wafa Putri A.",
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            launch('https://www.instagram.com/_ansalsabila/'),
                        child: Teamkotak(
                          imagePath: "assets/images/icha.png",
                          title: "Annisa Nurul S.",
                        ),
                      ),
                      InkWell(
                        onTap: () => launch(
                            'https://www.instagram.com/yaraa_meliya.nzzz/'),
                        child: Teamkotak(
                          imagePath: "assets/images/meli.png",
                          title: "Ananda Meliyana M.",
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            launch('https://www.instagram.com/restynraa/'),
                        child: Teamkotak(
                          imagePath: "assets/images/resty.png",
                          title: "Resty Nurazizah",
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            launch('https://www.instagram.com/rofiq.awal/'),
                        child: Teamkotak(
                          imagePath: "assets/images/rofiq.png",
                          title: "Rofiq Fadhillah A.",
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            launch('https://www.instagram.com/gaps117/'),
                        child: Teamkotak(
                          imagePath: "assets/images/gusti.png",
                          title: "Gusti Andika P.",
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            launch('https://www.instagram.com/rindiewelt/'),
                        child: Teamkotak(
                          imagePath: "assets/images/furqon.png",
                          title: "M. Furqon I. F.",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
