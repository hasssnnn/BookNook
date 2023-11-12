import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/splash/presentation/views/splash_view.dart';
import 'consts.dart';

void main() {
  runApp(const BookNook());
}

class BookNook extends StatelessWidget {
  const BookNook({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor:  kPrimaryColor
      ),
      home: const SplashView(),
    );
  }
}
