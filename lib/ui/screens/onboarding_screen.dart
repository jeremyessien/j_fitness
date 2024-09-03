import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:j_fitness/ui/screens/auth/signup_screen.dart';
import 'package:j_fitness/ui/widgets/app_button.dart';
import 'package:j_fitness/ui/widgets/dot_indicator.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<OnboardingContent> onboardData = [
    const OnboardingContent(
      image: 'assets/track goal.json',
      title: 'Track your Goal',
      description:
          'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
    ),
    const OnboardingContent(
      image: 'assets/run.json',
      title: 'Get Burn',
      description:
          'Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever',
    ),
    const OnboardingContent(
      image: 'assets/run.json',
      title: 'Eat Well',
      description:
          'Let\'s start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun',
    ),
    const OnboardingContent(
      image: 'assets/run.json',
      title: 'Improve Sleep Quality',
      description:
          'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardData.length,
                  itemBuilder: (context, index) => OnboardingContent(
                        image: onboardData[index].image,
                        title: onboardData[index].title,
                        description: onboardData[index].description,
                      )),
            ),
            DotIndicator(
                itemCount: onboardData.length, currentIndex: currentPage),

            AppButton(
              type: AppButtonType.normal,
              text: currentPage != onboardData.length - 1 ? 'Next' : 'Register',
              onPressed: () {
                currentPage != onboardData.length - 1
                    ? _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease)
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
              },
            ),
          ],
        ),
      )),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          child: Lottie.asset(image, height: 400.h),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                description,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
