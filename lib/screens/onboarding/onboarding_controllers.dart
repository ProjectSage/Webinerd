import 'package:get/state_manager.dart';
import 'package:webinerd/screens/onboarding/onboarding_info.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;

  List<OnBoardingInfo> onBoarding = [
    OnBoardingInfo('assets/onboarding1.png', 'Find your webinar',
        'Your shortcut to the best webinars around the world'),
    OnBoardingInfo('assets/onboarding2.png', 'Connect with the experts',
        'Listen & Engage with industry experts.'),
    OnBoardingInfo('assets/onboarding3.png', 'Tap your interest',
        'Filter your topics to find out about the webinars related to them'),
    OnBoardingInfo('assets/onboarding2.png', 'Connect with the experts',
        'Listen & Engage with industry experts.'),
  ];
}
