import 'dart:ui';

import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webinerd/Widgets/cardHeading.dart';
import 'package:webinerd/constants.dart';
import 'package:webinerd/Widgets/customHeadingText.dart';
import 'package:webinerd/Widgets/customLine.dart';
import 'package:webinerd/Widgets/customText.dart';
import 'package:webinerd/screens/otpScreen.dart';
import '../Widgets/customButton2.dart';

class PermissionScreen extends StatefulWidget {
  @override
  _PermissionScreenState createState() => new _PermissionScreenState();
}

class _PermissionScreenState extends State {
  Color baseColor = Color(0xFFF26272C);
  Color btnText = Color.fromRGBO(255, 203, 196, 1);
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return new Scaffold(
      backgroundColor: Color(0xFF26272C),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                  top: screen.size.height / 10, left: screen.size.height * 0.3),
              child: new InkWell(
                child: Text("Deny Permission",
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Color(0xff515256),
                    )),
                onTap: () => SystemNavigator.pop(),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: CustomHeadingText(
              text: permsheading,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 23),
                child: Image.asset('assets/perms1.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 32),
                child: CardHeading(text: cardheading1),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 50, top: 5, right: screen.size.height / 60),
            child: CustomText(
              //textAlign: TextAlign.center,
              text: cardtext1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 20,
                top: screen.size.height / 20,
                bottom: screen.size.height / 40),
            child: Customline(),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 22),
                child: Image.asset('assets/perms2.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 24),
                child: CardHeading(text: cardheading2),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 5),
            child: CustomText(
              text: cardtext2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 39),
            child: Customline(),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 22),
                child: Image.asset('assets/perms3.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 24),
                child: CardHeading(text: cardheading3),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 5),
            child: CustomText(
              text: cardtext3,
            ),
          ),
          SizedBox(
            height: 160,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screen.size.height / 60, top: screen.size.height / 30),
            child: ClayContainer(
                color: baseColor,
                height: screen.size.height / 15,
                width: screen.size.width / 2,
                borderRadius: 75,
                depth: 10,
                spread: 10,
                child: GestureDetector(
                  onTap: () {
                    print("heyy");
                    _checkPermissions();
                  },
                  child: Center(
                    child: Text(
                      "Grant Permissions",
                      style: TextStyle(
                          color: btnText, fontSize: screen.size.height / 50),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  void _checkPermissions() async {
    // var smsStatus = await Permission.sms;

    var locationStatus = await Permission.location.status;
    var phoneStatus = await Permission.phone.status;
    var smsStatus = await Permission.sms.status;
    // var notificationStatus = await Permission.notification;
    // var phoneStatus = await Permission.phone;

    print(locationStatus);

    if (!phoneStatus.isGranted &&
        !locationStatus.isGranted &&
        !smsStatus.isGranted) {
      await Permission.location.request();
      await Permission.phone.request();
      await Permission.sms.request();
      // await Permission.phone.request();
    } else {
      print("All Permissions Granted");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OtpScreen()));
    }
  }
}
