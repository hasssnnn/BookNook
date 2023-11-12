import 'package:book_nook/Core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch, // take the biggest width size
        children: [
          Image.asset(AssetsData.logo,scale: 2.5,),
          const Center(
            child:  Text('Limitless Books', style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),),
          )
        ],
      ),
    );
  }
}