import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Splash/Presentation/Views/splash_view.dart';

void main() {
  runApp(const BookNook());
}

class BookNook extends StatelessWidget {
  const BookNook({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
    );
  }
}
