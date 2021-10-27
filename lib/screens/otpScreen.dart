import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:webinerd/constants.dart';
import 'package:webinerd/Widgets/customHeadingText.dart';
import 'package:webinerd/Widgets/customText.dart';
import 'package:webinerd/otpinput.dart';
import 'package:webinerd/screens/homePageBtns/btns.dart';
import 'dart:math';
import 'dart:convert';
import 'package:flutter_otp/flutter_otp.dart';
import 'package:webinerd/screens/onboarding/onboarding_screen.dart';
import 'package:webinerd/screens/signUpPage.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => new _OtpScreenState();
}

class _OtpScreenState extends State {
  @override
  void initState() {
    super.initState();
    // _listenOtp();
    _sendOtp();
  }

  FlutterOtp otp = new FlutterOtp();
  int o1, o2, o3, o4;
  var signCode;
  int genOtp;
  final formKey = new GlobalKey<FormState>();
  Color baseColor = Color(0xFFF26272C);
  Color btnText = Color.fromRGBO(255, 203, 196, 1);
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return new Scaffold(
      backgroundColor: Color(0xFF26272C),
      body: Form(
        key: formKey,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 90,
              width: 80,
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, top: 30),
                child: Btns(img: Image.asset('assets/backbutton.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 25),
              child: CustomHeadingText(text: otpheading),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 25),
              child: CustomText(text: otpsubheading),
            ),
            // ClayContainer(
            //   // color: baseColor,
            //   height: 30,
            //   // width: 48,
            //   borderRadius: 15,
            //   depth: 10,
            //   spread: 10,
            //   child: PinFieldAutoFill(
            //     codeLength: 4,
            //     onCodeChanged: (val) {
            //       print(val);
            //       String val1 = val.toString();
            //       var arr = [""];
            //       arr = val1.split("");
            //       print(arr[0]);
            //     },
            //   ),
            // ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 48, left: screen.size.width / 5),
                  child: ClayContainer(
                    color: baseColor,
                    height: 48,
                    width: 48,
                    borderRadius: 15,
                    depth: 10,
                    spread: 10,
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: TextFormField(
                        onChanged: (val) {
                          this.o1 = int.parse(val);
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder
                              .none, //removes underline from textfield
                        ),
                        maxLength: 1,
                        cursorHeight: 20,
                        cursorWidth: 4,
                        cursorRadius: Radius.circular(2),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48, left: 20),
                  child: ClayContainer(
                    color: baseColor,
                    height: 48,
                    width: 48,
                    borderRadius: 15,
                    depth: 10,
                    spread: 10,
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: TextFormField(
                        onChanged: (val) {
                          this.o2 = int.parse(val);
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder
                              .none, //removes underline from textfield
                        ),
                        maxLength: 1,
                        cursorHeight: 20,
                        cursorWidth: 4,
                        cursorRadius: Radius.circular(2),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48, left: 20),
                  child: ClayContainer(
                    color: baseColor,
                    height: 48,
                    width: 48,
                    borderRadius: 15,
                    depth: 10,
                    spread: 10,
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: TextFormField(
                        onChanged: (val) {
                          this.o3 = int.parse(val);
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder
                              .none, //removes underline from textfield
                        ),
                        maxLength: 1,
                        cursorHeight: 20,
                        cursorWidth: 4,
                        cursorRadius: Radius.circular(2),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48, left: 20),
                  child: ClayContainer(
                    color: baseColor,
                    height: 48,
                    width: 48,
                    borderRadius: 15,
                    depth: 10,
                    spread: 10,
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: TextFormField(
                        onChanged: (val) {
                          this.o4 = int.parse(val);
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder
                              .none, //removes underline from textfield
                        ),
                        maxLength: 1,
                        cursorHeight: 20,
                        cursorWidth: 4,
                        cursorRadius: Radius.circular(2),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   height: 100,
                //   width: 50,
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 48),
                //     child: OtpInput(),
                //   ),
                // ),
                // Container(
                //   height: 100,
                //   width: 70,
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 48, left: 13),
                //     child: OtpInput(),
                //   ),
                // ),
                // Container(
                //   height: 100,
                //   width: 70,
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 48, left: 13),
                //     child: OtpInput(),
                //   ),
                // ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 21, left: 88),
                  child: CustomText(text: resendotp),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 21, left: 4),
                    child: new InkWell(
                      child: Text("Resend OTP?",
                          style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            color: Color(0xff515256),
                          )),
                      //onTap: () => SystemNavigator.pop(),
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screen.size.height / 60, top: screen.size.height / 30),
              child: ClayContainer(
                  color: baseColor,
                  height: screen.size.height / 15,
                  width: screen.size.width / 3,
                  borderRadius: 75,
                  depth: 10,
                  spread: 10,
                  child: GestureDetector(
                    onTap: () {
                      String ot = this.o1.toString() +
                          this.o2.toString() +
                          this.o3.toString() +
                          this.o4.toString();
                      print(ot);
                      print("--- $genOtp");
                      if (ot == genOtp.toString()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoardingScreen()));
                      } else {
                        Navigator.pop(context);
                      }
                    },
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: btnText, fontSize: screen.size.height / 50),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  // void _listenOtp() async {
  //   await SmsAutoFill().listenForCode;
  // }

  void _sendOtp() async {
    Random r = new Random();

    signCode = await SmsAutoFill().getAppSignature;
    genOtp = r.nextInt(9999 - 1000);

    print(signCode);

    otp.sendOtp("9518749311", "<#> Otp For You Is : $genOtp \n $signCode", 1000,
        9000, "+91");
  }
}
