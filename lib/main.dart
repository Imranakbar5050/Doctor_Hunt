import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:doctorfinder/Utils/appimages.dart';
import 'package:doctorfinder/onbording_screen_1.dart';
//import 'package:doctorfinder/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash_Screen(),
        );
      },
    );
  }
}
