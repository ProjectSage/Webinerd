import 'dart:ui';
// import 'package:webinerd/details_screen.dart';
import 'package:webinerd/screens/onboarding/onboarding_controllers.dart';
// import 'package:webinerd/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:webinerd/screens/signUpPage.dart';

import '../../constants.dart';

class OnBoardingScreen extends StatelessWidget {
  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: baseColor,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                onPageChanged: controller.selectedPageIndex,
                itemCount: controller.onBoarding.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(controller.onBoarding[index].imageAsset,
                            height: screen.size.height / 1.9,
                            width: screen.size.height / 1.5),
                        Text(
                          controller.onBoarding[index].title,
                          style: TextStyle(
                              fontSize: screen.size.height / 25,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFFF)),
                        ),
                        SizedBox(height: 32),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 64.0),
                          child: Text(controller.onBoarding[index].description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: screen.size.height / 40,
                                  color: Color(0xFFF696964))),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(
              // top: screen.size.height / 60,
              bottom: screen.size.height / 20,
              left: screen.size.height / 4.4,
            ),
            child: Row(
              children: List.generate(
                  controller.onBoarding.length,
                  (index) => Obx(() {
                        return Center(
                          child: Container(
                            margin: const EdgeInsets.all(4),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: controller.selectedPageIndex.value == index
                                  ? Color(0xFF3A3A3D)
                                  : Color(0xFF9E9E9E),
                              shape: BoxShape.circle,
                            ),
                          ),
                        );
                      })),
            ),
          ),
          Center(
            child: Padding(
                padding: EdgeInsets.only(
                  bottom: screen.size.height / 10,
                ),
                //padding: const EdgeInsets.only(left: 260, bottom: 50),
                child: new InkWell(
                  child: Text("Skip Intro",
                      style: TextStyle(
                        fontSize: screen.size.height / 40,
                        color: Color(0xff515256),
                      )),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage())),
                )),
          ),
        ],
      ),
    );
  }
}
