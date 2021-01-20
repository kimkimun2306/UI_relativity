import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class relativematerial_2 extends StatelessWidget {
  final String imagePath;
  final String title;
  final int numberOfCourses;

  const relativematerial_2({
    Key key,
    this.imagePath,
    this.title,
    this.numberOfCourses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              "03",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE4E7F4),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "2 Menit and 30 Detik",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFA0A5BD),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      "Contoh Latihan Soal Relativitas",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF0D1333),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 24,
            ),
            child: SizedBox(
              height: 40,
              width: 40,
              child: InkWell(
                  child: Image.asset("assets/images/play_active.png"),
                  onTap: () => launch('https://youtu.be/i17WMjIqQ-Y')),
            ),
          ),
        ],
      ),
    );
  }
}
