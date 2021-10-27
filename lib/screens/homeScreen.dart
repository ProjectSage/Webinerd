import 'package:clay_containers/widgets/clay_container.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:webinerd/screens/permissionScreen.dart';
import 'package:webinerd/Widgets/customText.dart';
import 'package:webinerd/constants.dart';
import 'package:webinerd/Widgets/customHeadingText.dart';
import 'package:webinerd/Widgets/customLine.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeScreen extends StatelessWidget {
  String extension = '';
  bool values = false;
  String phNo;
  String errorText = "";

  String generatedotp = "";
  Color baseColor = Color(0xFFF26272C);

  Color btnText = Color.fromRGBO(105, 105, 100, 1);
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return NeumorphicTheme(
      child: Material(
        child: NeumorphicBackground(
          child: new Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color(0xFF26272C),
            body: Form(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: screen.size.height / 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CustomHeadingText(
                      text: requestnumber,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 4),
                    child: CustomText(
                      text: reqnumberdesc,
                    ),
                  ),
                  SizedBox(
                    height: screen.size.height / 40,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screen.size.height / 80, top: 8),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(screen.size.height / 20),
                              ),
                              lightSource: LightSource.topLeft,
                              color: baseColor,
                              depth: -5),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: CountryPickerDropdown(
                              itemBuilder: _buildDropdownItem,
                              dropdownColor: primarycolour,
                              initialValue: 'IN',
                              onValuePicked: (Country value) {
                                this.extension = value.phoneCode;
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screen.size.height / 70,
                      ),
                      Expanded(
                        // flex: 2,
                        child: Neumorphic(
                          margin: EdgeInsets.only(
                              left: 8, right: 8, top: 0, bottom: 4),
                          style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(screen.size.height / 20),
                              ),
                              lightSource: LightSource.topLeft,
                              color: baseColor,
                              depth: -5),
                          padding: EdgeInsets.symmetric(
                              vertical: screen.size.height / 82,
                              horizontal: 18),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),

                            //Actual textfield which gets input from the user.
                            //the  max length = 10 and max lines = 1
                            child: TextFormField(
                              onChanged: (value) {
                                // print("Num is : $value");
                                // setState(() {
                                this.phNo = value;
                                // });
                              },
                              keyboardType: TextInputType.number,

                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                hintText: '9999999999',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(60, 61, 64, 1),
                                ),
                                counterText: '',
                                border: InputBorder
                                    .none, //removes underline from textfield
                              ),
                              maxLength: 10,
                              maxLines: 1,
                              cursorHeight: 20,
                              cursorWidth: 4,
                              cursorRadius: Radius.circular(2),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  //letterSpacing: 10,
                                  fontSize: screen.size.height / 50),
                              //cursorColor: Color(0xFFFFCBC4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screen.size.height / 2.8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    child: Customline(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Theme(
                      child: Checkbox(
                          value: this.values,
                          onChanged: (bool values) {
                            // setState(() {
                            this.values = values;
                            if (values == true && this.phNo.length == 10) {
                              this.btnText = Color.fromRGBO(255, 203, 196, 1);
                            } else
                              this.btnText = Color.fromRGBO(105, 105, 100, 1);
                            // });
                          }),
                      data: ThemeData(
                        primarySwatch: Colors.blue,
                        unselectedWidgetColor: primarytextcolour, // Your color
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 4),
                        child: CustomText(
                          text: terms1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2, top: 3),
                        child: new InkWell(
                            child: Text("Terms of Service",
                                style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.underline,
                                    color: Colors.white38)),
                            onTap: () => launch('https://www.google.com')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3, top: 4),
                        child: CustomText(
                          text: terms3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, top: 3),
                        child: new InkWell(
                            child: Text("Privacy Policy.",
                                style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.underline,
                                    color: Colors.white38)),
                            onTap: () => launch('https://www.youtube.com')),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: screen.size.height / 10,
                        left: screen.size.width / 40),
                    child: ClayContainer(
                      color: baseColor,
                      height: screen.size.height / 15,
                      width: screen.size.width / 2,
                      borderRadius: 75,
                      depth: 10,
                      spread: 10,
                      child: RaisedButton(
                        color: baseColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "Accept & Continue",
                            style: TextStyle(
                                color: btnText,
                                fontSize: screen.size.height / 50),
                          ),
                        ),
                        onPressed: () async {
                          // if (this.values == true && this.phNo.length != 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PermissionScreen()));
                          //   setState(() {
                          //     this.errorText = "";
                          //   });
                          // } else {
                          //   setState(() {
                          //     this.errorText =
                          //         "Please Accept Terms & Conditions";
                          //   });
                          // }
                        },
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(top: screen.size.height / 30),
                  //   child: ClayContainer(
                  //       color: baseColor,
                  //       height: screen.size.height / 15,
                  //       width: screen.size.width / 2,
                  //       borderRadius: 75,
                  //       depth: 10,
                  //       spread: 10,
                  //       child: GestureDetector(
                  //         onTap: () async {
                  //           final signCode =
                  //               await SmsAutoFill().getAppSignature;
                  //           print(signCode);
                  //           // if (this.values == true && this.phNo.length != 0) {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) => PermissionScreen()));
                  //           //   setState(() {
                  //           //     this.errorText = "";
                  //           //   });
                  //           // } else {
                  //           //   setState(() {
                  //           //     this.errorText =
                  //           //         "Please Accept Terms & Conditions";
                  //           //   });
                  //           // }
                  //         },
                  //         child: Center(
                  //           child: Text(
                  //             "Accept & Continue",
                  //             style: TextStyle(
                  //                 color: btnText,
                  //                 fontSize: screen.size.height / 50),
                  //           ),
                  //         ),
                  //       )),
                  // ),
                  Center(
                      child: Text(this.errorText,
                          style: TextStyle(color: Colors.red)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildDropdownItem(Country country) => SizedBox(
      width: 50,
      child: Text(
        '+${country.phoneCode}',
        style: TextStyle(color: Colors.white),
      ),
    );
