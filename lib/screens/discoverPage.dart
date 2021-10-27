import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webinerd/screens/homePageBtns/btns.dart';
import 'package:custom_switch/custom_switch.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  Color baseColor = Color(0xFFF26272C);
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return Scaffold(
        drawer: Toggle(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            backgroundColor: baseColor,
            leading: Builder(
              builder: (context) => IconButton(
                icon: Image.asset('assets/settings.png'),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
            // title: Text("Menu"),
          ),
        ),
        // Padding(
        //         padding: EdgeInsets.only(
        //             left: screen.size.height / 50,
        //             top: screen.size.height / 30),
        //         child: GestureDetector(
        //           onTap: () {
        //             Toggle();
        //           },
        //           child: Container(
        //             // color: Colors.white,
        //             height: screen.size.height / 18,
        //             width: screen.size.width / 8,
        //             // child: Padding(
        //             // padding: const EdgeInsets.only(top: 10),
        //             child: Btns(img: Image.asset('assets/settings.png')),
        //             // ),
        //           ),
        //         ),
        //       ),
        backgroundColor: baseColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screen.size.height / 60),
              Padding(
                padding: EdgeInsets.only(left: screen.size.height / 40),
                child: Text("Discover Webinars",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: screen.size.height / 50)),
              ),
              // SizedBox(height: screen.size.height / 60),
              Center(
                child: Container(
                  width: screen.size.width / 1.1,
                  height: screen.size.height / 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    // controller: _filter,
                    decoration: new InputDecoration(
                        fillColor: Colors.white,
                        suffixIcon: new Icon(Icons.search),
                        hintText: '  Search for Webinars',
                        hintStyle:
                            TextStyle(fontSize: screen.size.height / 50)),
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screen.size.height / 50,
                            top: screen.size.height / 70),
                        child: Container(
                          // color: Colors.white,
                          height: screen.size.height / 18,
                          width: screen.size.width / 8,
                          // child: Padding(
                          // padding: const EdgeInsets.only(top: 10),
                          child: Btns(img: Image.asset('assets/popular.png')),
                          // ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screen.size.height / 60),
                        child: Text("Popular",
                            style: TextStyle(
                                color: Color.fromRGBO(216, 214, 218, 1),
                                fontSize: screen.size.height / 70)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screen.size.height / 30,
                            top: screen.size.height / 70),
                        child: Container(
                          // color: Colors.white,
                          height: screen.size.height / 18,
                          width: screen.size.width / 8,
                          // child: Padding(
                          // padding: const EdgeInsets.only(top: 10),
                          child: Btns(img: Image.asset('assets/trending.png')),
                          // ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screen.size.height / 50),
                        child: Text("Trending",
                            style: TextStyle(
                                color: Color.fromRGBO(216, 214, 218, 1),
                                fontSize: screen.size.height / 70)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screen.size.height / 30,
                            top: screen.size.height / 70),
                        child: Container(
                          // color: Colors.white,
                          height: screen.size.height / 18,
                          width: screen.size.width / 8,
                          // child: Padding(
                          // padding: const EdgeInsets.only(top: 10),
                          child:
                              Btns(img: Image.asset('assets/upcomingIcon.png')),
                          // ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screen.size.height / 50),
                        child: Text("Upcoming",
                            style: TextStyle(
                                color: Color.fromRGBO(216, 214, 218, 1),
                                fontSize: screen.size.height / 70)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screen.size.height / 30,
                            top: screen.size.height / 70),
                        child: Container(
                          // color: Colors.white,
                          height: screen.size.height / 18,
                          width: screen.size.width / 8,
                          // child: Padding(
                          // padding: const EdgeInsets.only(top: 10),
                          child: Btns(img: Image.asset('assets/ondemand.png')),
                          // ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screen.size.height / 40),
                        child: Text("On-Demand",
                            style: TextStyle(
                                color: Color.fromRGBO(216, 214, 218, 1),
                                fontSize: screen.size.height / 70)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screen.size.height / 30,
                            top: screen.size.height / 70),
                        child: Container(
                          // color: Colors.white,
                          height: screen.size.height / 18,
                          width: screen.size.width / 8,
                          // child: Padding(
                          // padding: const EdgeInsets.only(top: 10),
                          child: Btns(img: Image.asset('assets/ongoing.png')),
                          // ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screen.size.height / 70),
                        child: Text("Ongoing",
                            style: TextStyle(
                                color: Color.fromRGBO(216, 214, 218, 1),
                                fontSize: screen.size.height / 70)),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: screen.size.height / 50),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screen.size.height / 40),
                    child: Text("Recommended Webinars",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screen.size.height / 50)),
                  ),
                  SizedBox(width: screen.size.width / 3.7),
                  Padding(
                    padding: EdgeInsets.only(left: screen.size.height / 60),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Color.fromRGBO(255, 203, 196, 1),
                          ),
                          text: 'See All',

                          // style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service"');
                            }),
                    ),
                    // child: Text("See All",
                    //     style: TextStyle(
                    //         color: Color.fromRGBO(255, 203, 196, 1),
                    //         fontSize: screen.size.height / 70)),
                  ),
                ],
              ),
              // SizedBox(height: screen.size.height / 100),
              Container(
                height: screen.size.height / 5,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  controller: PageController(viewportFraction: 0.5),
                  // onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.only(left: 30, top: 15, bottom: 15),
                    child: Container(
                      height: screen.size.height / 80,
                      decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[800],
                              offset: const Offset(
                                -7.0,
                                -7.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ]),
                      width: screen.size.width / 2,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('assets/IOT.png',
                              fit: BoxFit.contain,
                              width: screen.size.width * 1.2),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screen.size.height / 90),
                                child: Text(
                                    "Wed, 21 Apr 2021 * 7:30 pm GMT +5:30",
                                    style: TextStyle(
                                        color: Color.fromRGBO(175, 175, 175, 1),
                                        fontSize: screen.size.height / 100)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screen.size.height / 60),
                                child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 203, 196, 1),
                                        fontSize: screen.size.height / 100,
                                      ),
                                      text: 'Free',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          print('Terms of Service"');
                                        }),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: screen.size.height / 90),
                            child: Text(
                              "Code for Apps for Front End Web Developers by Cisco",
                              style: TextStyle(
                                  color: Color.fromRGBO(232, 232, 232, 1),
                                  fontSize: screen.size.height / 70),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: screen.size.height / 100),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screen.size.height / 40),
                    child: Text("Popular Organisers",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screen.size.height / 50)),
                  ),
                  SizedBox(width: screen.size.width / 3.7),
                  Padding(
                    padding: EdgeInsets.only(left: screen.size.height / 15),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Color.fromRGBO(255, 203, 196, 1),
                          ),
                          text: 'See All',

                          // style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service"');
                            }),
                    ),
                    // child: Text("See All",
                    //     style: TextStyle(
                    //         color: Color.fromRGBO(255, 203, 196, 1),
                    //         fontSize: screen.size.height / 70)),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(top: screen.size.height * 0.0000012),
                child: Container(
                  // color: Colors.white,
                  height: screen.size.height / 12,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    controller: PageController(viewportFraction: 0.3),
                    // onPageChanged: (int index) => setState(() => _index = index),
                    itemBuilder: (_, i) => Image.asset(
                      'assets/googleFrame.png',
                      fit: BoxFit.contain,
                      width: screen.size.width / 3,
                    ),
                  ),
                ),
              ),
              // SizedBox(height: screen.size.height / 120),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screen.size.height / 40),
                    child: Text("On-Demand Webinars",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screen.size.height / 50)),
                  ),
                  SizedBox(width: screen.size.width / 3.7),
                  Padding(
                    padding: EdgeInsets.only(left: screen.size.height / 23),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Color.fromRGBO(255, 203, 196, 1),
                          ),
                          text: 'See All',

                          // style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service"');
                            }),
                    ),
                    // child: Text("See All",
                    //     style: TextStyle(
                    //         color: Color.fromRGBO(255, 203, 196, 1),
                    //         fontSize: screen.size.height / 70)),
                  ),
                ],
              ),
              // SizedBox(height: screen.size.height / 100),
              Container(
                height: screen.size.height / 5,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  controller: PageController(viewportFraction: 0.5),
                  // onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.only(left: 30, top: 15, bottom: 15),
                    child: Container(
                      height: screen.size.height / 80,
                      decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[800],
                              offset: const Offset(
                                -7.0,
                                -7.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ]),
                      width: screen.size.width / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('assets/IOT.png',
                              fit: BoxFit.contain,
                              width: screen.size.width * 1.2),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screen.size.height / 90),
                                child: Text(
                                    "Wed, 21 Apr 2021 * 7:30 pm GMT +5:30",
                                    style: TextStyle(
                                        color: Color.fromRGBO(175, 175, 175, 1),
                                        fontSize: screen.size.height / 100)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screen.size.height / 60),
                                child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 203, 196, 1),
                                        fontSize: screen.size.height / 100,
                                      ),
                                      text: 'Free',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          print('Terms of Service"');
                                        }),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: screen.size.height / 90),
                            child: Text(
                              "Code for Apps for Front End Web Developers by Cisco",
                              style: TextStyle(
                                  color: Color.fromRGBO(232, 232, 232, 1),
                                  fontSize: screen.size.height / 70),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screen.size.height / 40),
                    child: Text("Other Topics",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screen.size.height / 50)),
                  ),
                  SizedBox(width: screen.size.width / 3.7),
                  Padding(
                    padding: EdgeInsets.only(left: screen.size.height / 8),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Color.fromRGBO(255, 203, 196, 1),
                          ),
                          text: 'See All',

                          // style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service"');
                            }),
                    ),
                    // child: Text("See All",
                    //     style: TextStyle(
                    //         color: Color.fromRGBO(255, 203, 196, 1),
                    //         fontSize: screen.size.height / 70)),
                  ),
                ],
              ),
              Container(
                height: screen.size.height / 7,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  controller: PageController(viewportFraction: 0.5),
                  // onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.only(left: 30, top: 15, bottom: 15),
                    child: Container(
                      height: screen.size.height / 100,
                      width: screen.size.width / 4,
                      decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[800],
                              offset: const Offset(
                                -7.0,
                                -7.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('assets/ARVR.png',
                              fit: BoxFit.fill, width: screen.size.width * 2),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Toggle extends StatefulWidget {
  const Toggle({Key key}) : super(key: key);

  @override
  _ToggleState createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  Color baseColor = Color(0xFFF26272C);
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return MaterialApp(
      theme: new ThemeData(canvasColor: baseColor),
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: screen.size.height / 10,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: screen.size.height / 20,
                      left: screen.size.height / 10),
                  child: Text(
                    'Lee Cooper',
                    style: TextStyle(
                        color: Colors.white, fontSize: screen.size.height / 50),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(58, 68, 161, 1),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  height: screen.size.height / 15,
                  width: screen.size.width / 7,
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5.0),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child: Btns(img: Image.asset('assets/myprofile.png')),
                  ),
                ),
                title: Text('My Profile',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
                onTap: () => {},
              ),
              ListTile(
                leading: Container(
                  height: screen.size.height / 15,
                  width: screen.size.width / 7,
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5.0),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child: Btns(img: Image.asset('assets/bookmark.png')),
                  ),
                ),
                title: Text('Bookmarks',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
                onTap: () => {},
              ),
              ListTile(
                leading: Container(
                  height: screen.size.height / 15,
                  width: screen.size.width / 7,
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5.0),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child:
                        Btns(img: Image.asset('assets/registeredwebinar.png')),
                  ),
                ),
                title: Text('Registered Webinars',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
                onTap: () => {},
              ),
              ListTile(
                leading: Container(
                  height: screen.size.height / 15,
                  width: screen.size.width / 7,
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5.0),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child: Btns(img: Image.asset('assets/attendedwebinar.png')),
                  ),
                ),
                title: Text('Attended Webinars',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
                onTap: () => {},
              ),
              ListTile(
                leading: Container(
                  height: screen.size.height / 15,
                  width: screen.size.width / 7,
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5.0),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child: Btns(img: Image.asset('assets/darkmode.png')),
                  ),
                ),
                title: Text('Dark Mode',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
                onTap: () => {},
              ),
              ListTile(
                leading: Container(
                  height: screen.size.height / 15,
                  width: screen.size.width / 7,
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5.0),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child: Btns(img: Image.asset('assets/notification.png')),
                  ),
                ),
                title: Text('Notifications',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
                onTap: () => {},
              ),
              ListTile(
                leading: Container(
                  height: screen.size.height / 15,
                  width: screen.size.width / 7,
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5.0),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child:
                        Btns(img: Image.asset('assets/sharewithfriends.png')),
                  ),
                ),
                title: Text('Share With Friends',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
                onTap: () => {},
              ),
              ListTile(
                leading: Container(
                  height: screen.size.height / 15,
                  width: screen.size.width / 7,
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5.0),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child: Btns(img: Image.asset('assets/privacypolicy.png')),
                  ),
                ),
                title: Text('Privacy Policy',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
                onTap: () => {},
              ),
              ListTile(
                leading: Container(
                  height: screen.size.height / 15,
                  width: screen.size.width / 7,
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5.0),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child:
                        Btns(img: Image.asset('assets/termsandconditions.png')),
                  ),
                ),
                title: Text('Terms And Conditions',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
                onTap: () => {},
              ),
            ],
          ),
        )),
      ),
    );
  }
}

// child: Center(
//                         child: Column(
//                           children: [
//                             Image.asset('assets/IOT.png',
//                                 fit: BoxFit.contain,
//                                 width: screen.size.width * 1.5),
//                             Text(
//                               "Code for Apps for Front End Web Developers by Cisco",
//                               style: TextStyle(
//                                   color: Color.fromRGBO(232, 232, 232, 1),
//                                   fontSize: screen.size.height / 50),
//                             ),
//                           ],
//                         ),
//                       ),