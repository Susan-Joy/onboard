import 'package:first/widgets/onboarding_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingPage extends StatefulWidget {
  const OnbordingPage({super.key});

  @override
  State<OnbordingPage> createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
  static final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _onBoardingPages = [
    OnboardingCard(
      image: "assets/images/onbording_3.png",
      title: "WELCOME",
      description: "Our app helps rural people improve digital literacy and manage their daily tasks with ease. Welcome to our Digital Literacy App, designed to empower rural women with essential technology skills. This app provides easy-to-follow tutorials and practical exercises to help you navigate the digital world confidently. Explore, learn, and connect with new opportunities at your own pace, and take the first step towards digital empowerment today!",
      buttonText: "Next ->",
      onPressed: () {
        _pageController.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.linear);
      },
      onPreviousPressed: () {},
      additionalButton: null,
    ),
    OnboardingCard(
      image: "assets/images/onbording_1.png",
      title: "WHATSAPP",
      description: "WhatsApp is a messaging app that lets you send messages, make voice and video calls, and share photos and videos with friends and family using the internet.",
      buttonText: "Next ->",
      onPressed: () {
        _pageController.animateToPage(2, duration: Duration(milliseconds: 300), curve: Curves.linear);
      },
      onPreviousPressed: () {
        _pageController.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.linear);
      },
      additionalButton: null,
    ),
    OnboardingCard(
      image: "assets/images/onbording_2.png",
      title: "GOOGLE PAY",
      description: "Google Pay is a digital payment app that allows you to make secure online payments and send money to others using your smartphone.",
      buttonText: "<- Previous",
      onPressed: () {
        _pageController.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.linear);
      },
      onPreviousPressed: () {
        _pageController.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.linear);
      },
      additionalButton: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: _onBoardingPages,
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: _onBoardingPages.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Theme.of(context).colorScheme.primary,
                dotColor: Theme.of(context).colorScheme.secondary,
              ),
              onDotClicked: (index) {
                _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.linear);
              },
            ),
          ],
        ),
      ),
    );
  }
}

