import 'package:book_nook/Core/utils/assets_data.dart';
import 'package:book_nook/Features/splash/presentation/views/Widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation <Offset>slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero).animate(animationController);
    animationController.forward();
    slidingAnimation.addListener(() { });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch, // take the biggest width size
        children: [
          Image.asset(AssetsData.logo,scale: 2.5,),
           Center(
            child:  SlidingText(slidingAnimation: slidingAnimation),
          )
        ],
      ),
    );
  }
}

