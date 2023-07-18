import 'package:agri_branch/recommendation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about_us.dart';

import 'crop_recommendation_page.dart';
import 'helper.dart';
import 'soil.dart';
import 'tips.dart';
import 'wheather.dart';

class KisanRakshak extends StatefulWidget
{
  const KisanRakshak({Key? key, required ScrollController? scrollController, required String title}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return KisanRakshakState();
  }

}

class KisanRakshakState extends State<KisanRakshak> {
  int currentIndex = 0;
  final List<Widget> _pages=[
    Weather(),
    SoilList(),
    //DiseaseDetectionPage(key: null, pageTitle: 'Disease Detection',),
    Crop_Recommend(),
    Helper(),
    AboutUs(),
  ];
  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Stack(
        children: [
          Center(
            child: _pages[currentIndex],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                clipBehavior: Clip.none, children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Column(
                    children: [
                      Center(
                        heightFactor: 0.6,
                        child: FloatingActionButton(backgroundColor: Colors.green, child: Icon(FontAwesomeIcons.gitlab), elevation: 0.1, onPressed: () {setBottomBarIndex(2);}),
                      ),
                      SizedBox(height: 26,),
                      Text('Crop ',style: GoogleFonts.getFont('Didact Gothic',color:Colors.white,fontWeight: FontWeight.bold,fontSize: 14),)
                    ],
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.cloudSunRain,
                                color: currentIndex == 0 ? Colors.white : Colors.black,
                              ),
                              onPressed: () {
                                setBottomBarIndex(0);
                              },
                              splashColor: Colors.white,
                            ),
                            Text('Weather',style: GoogleFonts.didactGothic(fontSize: 14,color: currentIndex == 0 ?Colors.white:Colors.black),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.seedling,
                                  color: currentIndex == 1 ? Colors.white : Colors.black,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(1);
                                }),
                            Text('Soilpedia',style: GoogleFonts.didactGothic(fontSize: 14,color: currentIndex == 1 ?Colors.white:Colors.black),)
                          ],
                        ),
                        Container(
                          width: size.width * 0.20,
                        ),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.bots,
                                  color: currentIndex == 3 ? Colors.white : Colors.black,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(3);
                                }),
                            Text('AI-Bot',style: GoogleFonts.didactGothic(fontSize: 14,color: currentIndex == 3 ?Colors.white:Colors.black),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.mobile,
                                  color: currentIndex == 4 ? Colors.white : Colors.black,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(4);
                                }),
                            Text('Contact Us',style: GoogleFonts.didactGothic(fontSize: 14,color:currentIndex == 4 ?Colors.white:Colors.black),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}