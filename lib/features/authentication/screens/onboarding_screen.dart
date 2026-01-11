import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultra_cart/features/authentication/bloc/onboarding_state.dart';
import 'package:ultra_cart/features/authentication/screens/login_screen.dart';
import 'package:ultra_cart/utils/constants/images.dart';
import '../../../utils/constants/text.dart';
import '../bloc/onboarding_bloc.dart';
import '../bloc/onboarding_event.dart';
import '../widget/onboarding_nextbutton.dart';
import '../widget/onboarding_pages.dart';
import '../widget/skip_button.dart';
import '../widget/smooth_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenRootState();
}

class _OnboardingScreenRootState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnBoardingBloc(),
      child: const _OnboardingScreen(),
    );
  }
}

class _OnboardingScreen extends StatefulWidget {
  const _OnboardingScreen({super.key});

  @override
  State<_OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<_OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnBoardingBloc, OnBoardingState>(
      listener: (context, state) {
        if (state.isSkip) {
          _pageController.jumpToPage(state.currentPage);
        } else {
          _pageController.animateToPage(
            state.currentPage,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
        // 🔹 Navigation to Login
        if (state.isCompleted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const LoginScreen()),
          );
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                context.read<OnBoardingBloc>().add(
                  OnBoardingEvent.pageChanged(index),
                );
              },
              children: const [
                OnBoardingPage(
                  image: TImages.tOnBoardingImage1,
                  title: TTexts.tOnBoardingTitle1,
                  subtitle: TTexts.tOnBoardingSubTitle1,
                ),
                OnBoardingPage(
                  image: TImages.tOnBoardingImage2,
                  title: TTexts.tOnBoardingTitle2,
                  subtitle: TTexts.tOnBoardingSubTitle2,
                ),
                OnBoardingPage(
                  image: TImages.tOnBoardingImage3,
                  title: TTexts.tOnBoardingTitle3,
                  subtitle: TTexts.tOnBoardingSubTitle3,
                ),
              ],
            ),
            SkipButton(
              ontap: () => context.read<OnBoardingBloc>().add(
                OnBoardingEvent.skipPressed(),
              ),
            ),
            SmoothIndicatorButton(controller: _pageController, totalPage: 3),
            OnboardingNextButton(
              ontap: () {
                context.read<OnBoardingBloc>().add(
                  OnBoardingEvent.nextPressed(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
