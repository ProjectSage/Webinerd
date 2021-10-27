import 'package:flutter/material.dart';
import 'package:webinerd/ui/base_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
          body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 150,
              margin: const EdgeInsets.all(50),
              color: Colors.blue,
              child: BaseWidget(
                  builder: (context, sizingInformation) =>
                      Text(sizingInformation.toString())),
            ),
            Text(sizingInformation.toString()),
          ],
        ),
      )
          // backgroundColor: Color(0xFF26272C),
          // body: new Column(
          //   mainAxisSize: MainAxisSize.min,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     Container(
          //       height: 90,
          //       width: 80,
          //       decoration: BoxDecoration(),
          //       child: Padding(
          //         padding: const EdgeInsets.only(left: 5, top: 30),
          //         // child: Backbutton(),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 28, left: 25),
          //       // child: CustomHeadingText(text: otpheading),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 5, left: 25),
          //       // child: CustomText(text: otpsubheading),
          //     ),
          //     Row(
          //       children: [
          //         Container(
          //           height: 100,
          //           width: 140,
          //           child: Padding(
          //             padding: const EdgeInsets.only(top: 48, left: 50),
          //             // child: OtpInput(),
          //           ),
          //         ),
          //         Container(
          //           height: 100,
          //           width: 50,
          //           child: Padding(
          //             padding: const EdgeInsets.only(top: 48),
          //             // child: OtpInput(),
          //           ),
          //         ),
          //         Container(
          //           height: 100,
          //           width: 70,
          //           child: Padding(
          //             padding: const EdgeInsets.only(top: 48, left: 13),
          //             // child: OtpInput(),
          //           ),
          //         ),
          //         Container(
          //           height: 100,
          //           width: 70,
          //           child: Padding(
          //             padding: const EdgeInsets.only(top: 48, left: 13),
          //             // child: OtpInput(),
          //           ),
          //         ),
          //       ],
          //     ),
          //     Row(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(top: 21, left: 88),
          //           child: BaseWidget(
          //             builder: (context, sizingInformation) =>
          //                 Text("text: resendotp"),
          //           ),
          //         ),
          //         Padding(
          //             padding: const EdgeInsets.only(top: 21, left: 4),
          //             child: new InkWell(
          //               child: Text("Resend OTP?",
          //                   style: TextStyle(
          //                     fontSize: 15,
          //                     decoration: TextDecoration.underline,
          //                     color: Color(0xff515256),
          //                   )),
          //               //onTap: () => SystemNavigator.pop(),
          //             )),
          //       ],
          //     ),
          //     Container(
          //       height: 150,
          //       width: 230,
          //       decoration: BoxDecoration(),
          //       child: Padding(
          //         padding: const EdgeInsets.only(left: 5, top: 50),
          //         // child: Custombutton3(),
          //       ),
          //     ),
          //   ],
          // ),
          );
    });
  }
}
