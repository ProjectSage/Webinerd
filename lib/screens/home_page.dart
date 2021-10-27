import 'package:flutter/material.dart';
import 'package:webinerd/screens/discoverPage.dart';
import 'package:webinerd/screens/homePageBtns/btns.dart';
import 'package:webinerd/widgets/backButton.dart';
import 'package:webinerd/widgets/customButton.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Color baseColor = Color(0xFFF26272C);
  var isVisible = true;

  SlideUpController slideUpController = SlideUpController();

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);

    return SwipeDetector(
      onSwipeRight: () {
        Navigator.of(context).push(_createRoute());
        // Navigator.push(
        //     context,
        //     PageTransition(
        //         type: PageTransitionType.leftToRightWithFade,
        //         child: DiscoverPage()));
      },
      child: Scaffold(
        backgroundColor: baseColor,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screen.size.height / 180,
              ),
              child: Image.asset("assets/oracle.png",
                  width: screen.size.width * 3, fit: BoxFit.contain),
            ),
            Padding(
              padding: EdgeInsets.only(top: screen.size.height / 4),
              child: Container(
                height: screen.size.height * 0.8,
                color: Colors.transparent,
                child: new Container(
                    decoration: new BoxDecoration(
                        color: baseColor,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          topRight: const Radius.circular(20.0),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                              "Accelerate Topline Revenue Growth on Oracle Cloud",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: screen.size.height / 40)),
                        ),
                        SizedBox(height: screen.size.height / 50),
                        Row(
                          children: [
                            Container(
                              height: screen.size.height / 15,
                              width: screen.size.width / 7,
                              decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, top: 10),
                                child: Btns(
                                    img: Image.asset('assets/organizer.png')),
                              ),
                            ),
                            Text("By Oracle",
                                style: TextStyle(
                                    color: Color.fromRGBO(175, 175, 175, 1),
                                    fontSize: screen.size.height / 70)),
                            SizedBox(width: screen.size.height / 9),
                            Container(
                              height: screen.size.height / 15,
                              width: screen.size.width / 5,
                              decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, top: 10),
                                child:
                                    Btns(img: Image.asset('assets/type.png')),
                              ),
                            ),
                            Text("Online Event",
                                style: TextStyle(
                                    color: Color.fromRGBO(175, 175, 175, 1),
                                    fontSize: screen.size.height / 70)),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: screen.size.height / 15,
                              width: screen.size.width / 7,
                              decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, top: 10),
                                child:
                                    Btns(img: Image.asset('assets/date.png')),
                              ),
                            ),
                            Text("23rd May, 9:00 a, GMT +5:30",
                                style: TextStyle(
                                    color: Color.fromRGBO(175, 175, 175, 1),
                                    fontSize: screen.size.height / 70)),
                            SizedBox(width: screen.size.height / 160),
                            Container(
                              height: screen.size.height / 15,
                              width: screen.size.width / 4,
                              decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, top: 10),
                                child: Btns(
                                    img: Image.asset('assets/duration.png')),
                              ),
                            ),
                            Text("45 Minutes",
                                style: TextStyle(
                                    color: Color.fromRGBO(175, 175, 175, 1),
                                    fontSize: screen.size.height / 70)),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              // color: Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    height: screen.size.height / 15,
                                    width: screen.size.width / 7,
                                    decoration: BoxDecoration(
                                        // borderRadius: BorderRadius.circular(5.0),
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 10),
                                      child: Btns(
                                          img: Image.asset(
                                              'assets/speaker.png')),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.white,
                                    width: screen.size.width / 2.5,
                                    height: screen.size.height / 15,
                                    // child: FittedBox(
                                    //   fit: BoxFit.fitWidth,
                                    //   // child: Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text("Ayush Michael",
                                          maxLines: 3,
                                          softWrap: true,
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              height: 1.5,
                                              color: Color.fromRGBO(
                                                  175, 175, 175, 1),
                                              fontSize:
                                                  screen.size.height / 70)),
                                    ),
                                    // ),
                                    // ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: screen.size.width / 36),
                              child: Container(
                                height: screen.size.height / 15,
                                width: screen.size.width / 6,
                                decoration: BoxDecoration(
                                    // borderRadius: BorderRadius.circular(5.0),
                                    // color: Colors.white,
                                    ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 10),
                                  child: Btns(
                                      img: Image.asset('assets/price.png')),
                                ),
                              ),
                            ),
                            Text("Free",
                                style: TextStyle(
                                    color: Color.fromRGBO(175, 175, 175, 1),
                                    fontSize: screen.size.height / 70)),
                          ],
                        ),
                        SizedBox(height: screen.size.height / 28),
                        new Center(
                          child: GestureDetector(
                            onTap: () {
                              slideUpController.toggle();
                              setState(() {
                                // this.isVisible = !this.isVisible;
                              });
                            },
                            child: ClayContainer(
                              height: screen.size.height / 3.2,
                              width: screen.size.width * 0.9,
                              depth: 10,
                              spread: 8,
                              color: baseColor,
                              borderRadius: 30,
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      SizedBox(width: 20),
                                      Text("Description",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontSize:
                                                  screen.size.height / 45)),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 10),
                                    child: Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged outcome.",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                175, 175, 175, 1),
                                            letterSpacing: 1.5,
                                            height: 1.3,
                                            fontSize: screen.size.height / 55)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: screen.size.height / 30,
                                    ),
                                    child: Text("14 hours ago",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(93, 94, 97, 1),
                                            // letterSpacing: 1.5,
                                            // height: 1.3,
                                            fontSize: screen.size.height / 80)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // ),
                        ),
                        SizedBox(height: screen.size.height / 40),
                        Row(
                          children: [
                            SizedBox(width: screen.size.width / 25),
                            Container(
                              // color: Colors.white,
                              height: screen.size.height / 14,
                              width: screen.size.width / 2.3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, top: 0, bottom: 0),
                                child: Custombutton(
                                    name: "Remind Me",
                                    bgColor: Color.fromRGBO(255, 203, 196, 1),
                                    textColor: Color.fromRGBO(58, 68, 161, 1)),
                              ),
                            ),
                            SizedBox(width: screen.size.width / 20),
                            Container(
                              // color: Colors.white,
                              height: screen.size.height / 14,
                              width: screen.size.width / 2.3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, top: 0, bottom: 0),
                                child: Custombutton(
                                  name: "Register Now",
                                  bgColor: Color.fromRGBO(58, 68, 161, 1),
                                  textColor: Color.fromRGBO(255, 203, 196, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            BottomSheet(
              controller: slideUpController,
            )
          ],
        ),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  final SlideUpController controller;
  const BottomSheet({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFFF26272C);
    final screen = MediaQuery.of(context);
    return ChangeNotifierProvider(
      create: (_) => SlideUpProvider(),
      child: Consumer<SlideUpProvider>(
        builder: (context, provider, child) {
          this.controller?.providerContext = context;
          return provider.isShow
              ? Column(
                  children: [
                    Container(
                      color: baseColor,
                      height: screen.size.height / 15,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: screen.size.width / 30),
                            child: Container(
                              color: baseColor,
                              height: screen.size.height / 15,
                              width: screen.size.width / 6,
                              child: Center(
                                  child: Btns(
                                      img: Image.asset(
                                          'assets/backbutton.png'))),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: screen.size.height / 4),
                            child: Container(
                              height: screen.size.height / 15,
                              width: screen.size.width / 6,
                              decoration: BoxDecoration(),
                              child:
                                  Btns(img: Image.asset('assets/reload.png')),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: screen.size.height * 0.856),
                      child: Container(
                        color: baseColor,
                        height: screen.size.height / 13,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screen.size.height / 10),
                              child: Container(
                                color: baseColor,
                                height: screen.size.height / 15,
                                width: screen.size.width / 6,
                                child: Center(
                                    child: Btns(
                                        img: Image.asset(
                                            'assets/bookmark.png'))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: screen.size.width / 4),
                              child: Container(
                                color: baseColor,
                                height: screen.size.height / 15,
                                width: screen.size.width / 6,
                                child: Center(
                                    child: Btns(
                                        img: Image.asset('assets/share.png'))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Container();
        },
      ),
    );
  }
}

class SlideUpProvider with ChangeNotifier {
  bool isShow = false;

  void updateState(bool newState) {
    isShow = newState;
    notifyListeners();
  }
}

class SlideUpController {
  SlideUpController._private();

  static final SlideUpController instance = SlideUpController._private();

  factory SlideUpController() => instance;

  BuildContext _providerContext;

  set providerContext(BuildContext context) {
    if (_providerContext != context) {
      _providerContext = context;
    }
  }

  void toggle() {
    if (_providerContext != null) {
      final provider = _providerContext.read<SlideUpProvider>();
      provider.updateState(!provider.isShow);
    } else {
      print('Need init provider context');
    }
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    transitionDuration: Duration(seconds: 2),
    pageBuilder: (context, animation, secondaryAnimation) => DiscoverPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(4.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
