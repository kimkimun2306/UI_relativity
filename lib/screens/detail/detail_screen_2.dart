import 'package:flutter/material.dart';
import 'package:relativandatomic/screens/detail/quiz_screen_atommodel.dart';
import 'package:relativandatomic/screens/detail/widgets/atommodel/atommodel_1.dart';
import 'package:relativandatomic/screens/detail/widgets/atommodel/atommodel_2.dart';
import 'package:relativandatomic/screens/detail/widgets/atommodel/atommodel_3.dart';
import 'package:relativandatomic/screens/detail/widgets/atommodel/atommodel_4.dart';
import 'package:relativandatomic/screens/detail/widgets/atommodel/atommodelquiz.dart';

class DetailScreen_2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailScreenState_2();
  }
}

class _DetailScreenState_2 extends State<DetailScreen_2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: Color(0xFF61688B),
          ),
          onPressed: () {
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
                  "assets/images/atomicmodel.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                top: 50,
                left: 24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        "Model Atom",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "\Gratis",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              "\$70",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 365,
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
                          "Kategori",
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
                            atommodel_1(),
                            atommodel_2(),
                            atommodelquiz(),
                            atommodel_3(),
                            atommodel_4(),
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
