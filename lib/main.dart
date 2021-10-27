import 'package:flutter/material.dart';
import 'package:webinerd/screens/discoverPage.dart';
import 'package:webinerd/screens/homeScreen.dart';
import 'package:webinerd/screens/home_page.dart';
import 'package:webinerd/screens/chooseCategories.dart';
import 'package:webinerd/screens/onboarding/onboarding_screen.dart';
import 'package:webinerd/screens/otpScreen.dart';
import 'package:webinerd/screens/permissionScreen.dart';
import 'package:webinerd/screens/popularOrganisers.dart';
import 'package:webinerd/screens/splashScreen.dart';
import 'package:webinerd/ui/views/home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:webinerd/screens/signUpPage.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new HomeScreen(),
        '/SplashScreen': (BuildContext context) => new SplashScreen(),
        '/PermissionScreen': (BuildContext context) => new PermissionScreen(),
        '/OtpScreen': (BuildContext context) => new OtpScreen(),
      },
    );
  }
}
