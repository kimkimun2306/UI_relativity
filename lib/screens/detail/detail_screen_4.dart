import 'package:flutter/material.dart';
import 'package:relativandatomic/screens/detail/widgets/buy_now_modal.dart';
import 'package:relativandatomic/screens/detail/widgets/teamname/teamname_1.dart';
import 'package:relativandatomic/screens/detail/widgets/teamname/teamname_2.dart';
import 'package:relativandatomic/screens/detail/widgets/teamname/teamname_3.dart';
import 'package:relativandatomic/screens/detail/widgets/teamname/teamname_4.dart';
import 'package:relativandatomic/screens/detail/widgets/teamname/teamname_5.dart';
import 'package:relativandatomic/screens/detail/widgets/teamname/teamname_6.dart';
import 'package:relativandatomic/screens/detail/widgets/teamname/teamname_7.dart';
import 'package:relativandatomic/screens/detail/widgets/teamname/teamname_8.dart';

class DetailScreen_4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailScreenState_4();
  }
}

class _DetailScreenState_4 extends State<DetailScreen_4> {
  @override
  void initState() {
    super.initState();
  }

  void _showModal() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (_) {
        return BuyNowModal();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFF5F4EF),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F4EF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: Color(0xFF61688B),
          ),
          onPressed: () {
            debugPrint("back is pressed");

            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          height: size.height,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.60,
                width: size.width,
                child: Image.asset(
                  "assets/images/team.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                top: 24,
                left: 24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        "Our Team",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 350,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 32,
                          left: 24,
                        ),
                        child: Text(
                          "Member",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0D1333),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          children: <Widget>[
                            TeamName1(),
                            TeamName2(),
                            TeamName3(),
                            TeamName4(),
                            TeamName5(),
                            TeamName6(),
                            TeamName7(),
                            TeamName8(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
