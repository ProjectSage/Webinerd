import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webinerd/constants.dart';
import 'package:webinerd/screens/homePageBtns/btns.dart';
import 'package:webinerd/widgets/backButton.dart';
import 'package:webinerd/widgets/googlebtn.dart';
import 'package:webinerd/widgets/linkedin.dart';
import 'package:webinerd/widgets/outlookbtn.dart';
import 'package:webinerd/widgets/signInbtutton.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:webinerd/services/authService.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool values = true;
  Color baseColor = Color(0xFFF26272C);

  @override
  Widget build(BuildContext context) {
    return NeumorphicTheme(
      // usedTheme: UsedTheme.LIGHT,
      child: Material(
        child: NeumorphicBackground(
          child: _SignUpPage(),
        ),
      ),
    );
  }
}

class _SignUpPage extends StatefulWidget {
  const _SignUpPage({Key key}) : super(key: key);

  @override
  __SignUpPageState createState() => __SignUpPageState();
}

final _key = GlobalKey<FormState>();
final AuthenticationService _auth = AuthenticationService();

TextEditingController _firstNameController = TextEditingController();
TextEditingController _lastNameController = TextEditingController();
TextEditingController _businessEmailController = TextEditingController();
TextEditingController _companyNameController = TextEditingController();
TextEditingController _jobTitleController = TextEditingController();
TextEditingController _createPasswordController = TextEditingController();
TextEditingController _countryController = TextEditingController();

class __SignUpPageState extends State<_SignUpPage>
    with SingleTickerProviderStateMixin {
  Color baseColor = Color(0xFFF26272C);
  bool values = true;

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Color(0xFFF26272C),
      body: Container(
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: data.size.width / 30),
                child: Container(
                  color: baseColor,
                  height: data.size.height / 15,
                  width: data.size.width / 6,
                  child: Center(
                      child: Btns(img: Image.asset('assets/backbutton.png'))),
                ),
              ),
              SizedBox(height: data.size.height / 40),

              //Heading Details Page
              Padding(
                  padding: EdgeInsets.only(left: data.size.width / 10),
                  child: Text(
                    "The last few details",
                    style: TextStyle(
                        fontSize: data.size.height / 50,
                        fontWeight: FontWeight.w600,
                        color: headingcolour),
                  )),
              SizedBox(height: data.size.height / 90),

              //Little description
              Padding(
                padding: EdgeInsets.only(left: data.size.width / 10),
                child: Text(
                  "Fill the details to access best webinars in the world",
                  style: TextStyle(
                    fontSize: 11,
                    color: primarytextcolour,
                  ),
                ),
              ),
              SizedBox(height: data.size.height / 40),
              Center(
                child: Container(
                  // color: baseColor,
                  height: data.size.height / 16,
                  width: data.size.width / 1.2,
                  child: Neumorphic(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(data.size.height / 30),
                        ),
                        lightSource: LightSource.topLeft,
                        color: baseColor,
                        depth: -3),
                    padding: EdgeInsets.symmetric(
                        vertical: data.size.height / 82, horizontal: 18),
                    child: TextFormField(
                      controller: _firstNameController,
                      validator: (val) {
                        if (val.isEmpty) {
                          return "Name is empty";
                        } else {
                          return null;
                        }
                      },
                      style: TextStyle(
                          color: Colors.white, fontSize: data.size.height / 50),
                      // onChanged: this.widget.onChanged,
                      // controller: _controller,
                      decoration: InputDecoration.collapsed(
                          hintText: "first name",
                          hintStyle: TextStyle(
                              color: primarytextcolour,
                              fontSize: data.size.height / 50)),
                      // focusNode: _focusNode
                    ),
                  ),
                ),
              ),
              SizedBox(height: data.size.height / 90),
              Center(
                child: Container(
                  // color: baseColor,
                  height: data.size.height / 16,
                  width: data.size.width / 1.2,
                  child: Neumorphic(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(25),
                        ),
                        lightSource: LightSource.topLeft,
                        color: baseColor,
                        depth: -3),
                    padding: EdgeInsets.symmetric(
                        vertical: data.size.height / 82, horizontal: 18),
                    child: TextFormField(
                      controller: _lastNameController,
                      validator: (val) {
                        if (val.isEmpty) {
                          return "Last Name is empty";
                        } else {
                          return null;
                        }
                      },
                      style: TextStyle(
                          color: Colors.white, fontSize: data.size.height / 50),
                      // onChanged: this.widget.onChanged,
                      // controller: _controller,
                      decoration: InputDecoration.collapsed(
                          hintText: "last name",
                          hintStyle: TextStyle(
                              color: primarytextcolour,
                              fontSize: data.size.height / 50)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: data.size.height / 90),
              Center(
                child: Container(
                  // color: baseColor,
                  height: data.size.height / 16,
                  width: data.size.width / 1.2,
                  child: Neumorphic(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(25),
                        ),
                        lightSource: LightSource.topLeft,
                        color: baseColor,
                        depth: -3),
                    padding: EdgeInsets.symmetric(
                        vertical: data.size.height / 82, horizontal: 18),
                    child: TextFormField(
                      controller: _businessEmailController,
                      // validator: (val) {
                      //   if (val.isEmpty) {
                      //     return "Business Email is empty";
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      style: TextStyle(
                          color: Colors.white, fontSize: data.size.height / 50),
                      // onChanged: this.widget.onChanged,
                      // controller: _controller,
                      decoration: InputDecoration.collapsed(
                          hintText: "business email",
                          hintStyle: TextStyle(
                              color: primarytextcolour,
                              fontSize: data.size.height / 50)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: data.size.height / 90),
              Center(
                child: Container(
                  // color: baseColor,
                  height: data.size.height / 16,
                  width: data.size.width / 1.2,
                  child: Neumorphic(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(25),
                        ),
                        lightSource: LightSource.topLeft,
                        color: baseColor,
                        depth: -3),
                    padding: EdgeInsets.symmetric(
                        vertical: data.size.height / 82, horizontal: 18),
                    child: TextFormField(
                      controller: _companyNameController,
                      // validator: (val) {
                      //   if (val.isEmpty) {
                      //     return "Company Name is empty";
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      style: TextStyle(
                          color: Colors.white, fontSize: data.size.height / 50),
                      // onChanged: this.widget.onChanged,
                      // controller: _controller,
                      decoration: InputDecoration.collapsed(
                          hintText: "company name",
                          hintStyle: TextStyle(
                              color: primarytextcolour,
                              fontSize: data.size.height / 50)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: data.size.height / 90),
              Center(
                child: Container(
                  // color: baseColor,
                  height: data.size.height / 16,
                  width: data.size.width / 1.2,
                  child: Neumorphic(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(25),
                        ),
                        lightSource: LightSource.topLeft,
                        color: baseColor,
                        depth: -3),
                    padding: EdgeInsets.symmetric(
                        vertical: data.size.height / 82, horizontal: 18),
                    child: TextFormField(
                      controller: _jobTitleController,
                      // validator: (val) {
                      //   if (val.isEmpty) {
                      //     return "Job Title is empty";
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      style: TextStyle(
                          color: Colors.white, fontSize: data.size.height / 50),
                      // onChanged: this.widget.onChanged,
                      // controller: _controller,
                      decoration: InputDecoration.collapsed(
                          hintText: "job title",
                          hintStyle: TextStyle(
                              color: primarytextcolour,
                              fontSize: data.size.height / 50)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: data.size.height / 90),
              Center(
                child: Container(
                  // color: baseColor,
                  height: data.size.height / 16,
                  width: data.size.width / 1.2,
                  child: Neumorphic(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(25),
                        ),
                        lightSource: LightSource.topLeft,
                        color: baseColor,
                        depth: -3),
                    padding: EdgeInsets.symmetric(
                        vertical: data.size.height / 82, horizontal: 18),
                    child: TextFormField(
                      controller: _createPasswordController,
                      // validator: (val) {
                      //   if (val.isEmpty) {
                      //     return "Password is empty";
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      style: TextStyle(
                          color: Colors.white, fontSize: data.size.height / 50),
                      // onChanged: this.widget.onChanged,
                      // controller: _controller,
                      decoration: InputDecoration.collapsed(
                          hintText: "create password",
                          hintStyle: TextStyle(
                              color: primarytextcolour,
                              fontSize: data.size.height / 50)),
                      // focusNode: _focusNode,
                    ),
                  ),
                ),
              ),
              SizedBox(height: data.size.height / 90),
              Center(
                child: Container(
                  // color: baseColor,
                  height: data.size.height / 16,
                  width: data.size.width / 1.2,
                  child: Neumorphic(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(25),
                        ),
                        lightSource: LightSource.topLeft,
                        color: baseColor,
                        depth: -3),
                    padding: EdgeInsets.symmetric(
                        vertical: data.size.height / 82, horizontal: 18),
                    child: TextFormField(
                      controller: _countryController,
                      // validator: (val) {
                      //   if (val.isEmpty) {
                      //     return "Country Name is empty";
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      style: TextStyle(
                          color: Colors.white, fontSize: data.size.height / 50),
                      // onChanged: this.widget.onChanged,
                      // controller: _controller,
                      decoration: InputDecoration.collapsed(
                          hintText: "country",
                          hintStyle: TextStyle(
                              color: primarytextcolour,
                              fontSize: data.size.height / 50)),
                    ),
                  ),
                ),
              ),
              //TextFields
              //
              SizedBox(height: data.size.height / 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(width: data.size.width / 50),
                  Theme(
                    child: Checkbox(
                        value: this.values,
                        onChanged: (bool values) {
                          setState(() {
                            this.values = values;
                          });
                        }),
                    data: ThemeData(
                      primaryColor: Color(0xffffff),
                      unselectedWidgetColor: primarytextcolour, // Your color
                    ),
                  ),
                  Text(
                    "I agree to Webinerd's ",
                    style: TextStyle(
                      fontSize: data.size.width / 30,
                      color: primarytextcolour,
                    ),
                  ),

                  new RichText(
                    text: new TextSpan(
                      children: [
                        new TextSpan(
                          text: "Terms of Services",
                          style: new TextStyle(
                              fontSize: data.size.width / 30,
                              color: primarytextcolour,
                              decoration: TextDecoration.underline),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              launch(
                                  'https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
                            },
                        ),
                      ],
                    ),
                  ),
                  new RichText(
                    text: new TextSpan(
                      children: [
                        new TextSpan(
                          text: ", Privacy policy.",
                          style: new TextStyle(
                              fontSize: data.size.width / 30,
                              color: primarytextcolour,
                              decoration: TextDecoration.underline),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              launch(
                                  'https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: data.size.height / 200),
              Center(
                child: Container(
                  height: data.size.height / 10,
                  width: data.size.width / 3,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 0),
                    child: GestureDetector(
                      onTap: () {
                        if (_key.currentState.validate()) {
                          createUser();
                        }
                      },
                      child: Center(
                        child: ClayContainer(
                          color: baseColor,
                          height: data.size.height / 15,
                          width: data.size.width / 2,
                          borderRadius: data.size.height / 20,
                          depth: 10,
                          spread: 10,
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Image.asset("assets/Signin.png",
                                height: data.size.height / 2,
                                width: data.size.width / 20),
                          ),
                        ),
                      ),
                      // onTap: () {
                      //   Navigator.push(context,
                      //       // MaterialPageRoute(builder: (context) => PermissionScreen()));
                      // },
                    ),
                  ),
                ),
              ),
              SizedBox(height: data.size.height / 130),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Center(
                  child: Text(
                    "-Or sign in with--",
                    style: TextStyle(
                      fontSize: data.size.height / 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // SizedBox(height: data.size.height / 320),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: data.size.height / 12,
                    width: data.size.width / 6,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 5,
                          top: MediaQuery.of(context).size.height / 120),
                      child: Google_button(),
                    ),
                  ),
                  Container(
                    height: data.size.height / 12,
                    width: data.size.width / 6,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 10,
                          top: MediaQuery.of(context).size.height / 100),
                      child: linkedinButton(),
                    ),
                  ),
                  Container(
                    height: data.size.height / 12,
                    width: data.size.width / 6,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 10,
                          top: MediaQuery.of(context).size.height / 100),
                      child: outlookButton(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void createUser() async {
    String name = _firstNameController.text + _lastNameController.text;
    print(name);
    // dynamic result=await _auth.createNewUser(f, email, password)
  }
}
