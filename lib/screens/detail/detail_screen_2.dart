import 'package:flutter/material.dart';
import 'package:relativandatomic/screens/detail/quiz_screen_atommodel.dart';
import 'package:relativandatomic/screens/detail/widgets/atommodel/atommodel_1.dart';
import 'package:relativandatomic/screens/detail/widgets/atommodel/atommodel_2.dart';
import 'package:relativandatomic/screens/detail/widgets/atommodel/atommodel_3.dart';
import 'package:relativandatomic/screens/detail/widgets/atommodel/atommodel_4.dart';
import 'package:relativandatomic/screens/detail/widgets/atommodel/atommodelquiz.dart';
import 'package:relativandatomic/screens/detail/widgets/buy_now_modal.dart';

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
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 24,
                color: Color(0xFF61688B),
              ),
              onPressed: () {
                _showModal();
              },
            ),
          ),
        ],
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
                top: 24,
                left: 24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 100,
                          child: Image.asset(
                            "assets/images/best_seller_ribbon.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            top: 8,
                          ),
                          child: Text(
                            "BESTSELLER",
                            style: TextStyle(
                              color: Color(0xFF0D1333),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        "Atomic Models",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
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
                            "\FREE",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              "\$70",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
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
                          "Categories",
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
                            atommodel_3(),
                            atommodel_4(),
                            atommodelquiz(),
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
