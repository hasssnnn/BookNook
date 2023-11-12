import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) {
      return SlideTransition(
        position: slidingAnimation,
        child: const Text('Limitless Books', style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),),
      );
      },
    );
  }
}