import 'package:flutter/cupertino.dart';

//list of colours

Color primarycolour = Color(0xFF26272C),
    accentcolour = Color(0xFFFFCBC4),
    primarytextcolour = Color(0xFF515256),
    headingcolour = Color(0xFFD8D6DA),
    hinttextcolour = Color(0xFF3C3D40);

//list of strings

final appname = "Webinerd";
final requestnumber = "give us your \nmobile number";
final reqnumberdesc =
    "We need your phone number to register your account with us. We will verify its validity for the registration.";
final terms1 = "you agree to the Webinerd ";
final terms2 = "Terms of Service";
final terms3 = "and";
final terms4 = "Privacy Policy";
final permsheading = "we take the following permissions";

final cardheading1 = "phone state permission";
final cardheading2 = "location permission";
final cardheading3 = "sms permission";

final cardtext1 =
    "we need this permission to ensure the SIM card in your phone and your registered phone number match.";
final cardtext2 =
    "we need your location to help you navigate with the best webinars around you.";
final cardtext3 =
    "we need this permission to send you alerts for information regarding any webinars that you might be interested in.";

final otpheading = "we have sent you \nan OTP";
final otpsubheading = "enter the 4 digit OTP sent on 1234567890 to proceed";
final resendotp = "Didn't receive an OTP?";
final baseColor = Color(0xFFF26272C);

class Constants extends StatelessWidget {
  const Constants({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return Container();
  }
}
