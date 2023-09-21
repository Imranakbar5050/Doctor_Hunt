import 'package:doctorfinder/Home_Screen.dart';
import 'package:doctorfinder/Login_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'SignUp_Screen.dart';
import 'Utils/appimages.dart';

class onbording_screen3 extends StatefulWidget {
  const onbording_screen3({super.key});

  @override
  State<onbording_screen3> createState() => _onbording_screen3State();
}

class _onbording_screen3State extends State<onbording_screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 430, right: 130),
                    child: Image(image: AssetImage(AppImages.onboart_image1)),
                  ),
                ),
                // The second image on top of the first image
                Positioned.fill(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(bottom: 200, left: 10, right: 10),
                    child: Image(image: AssetImage(AppImages.onboart_image5)),
                  ),
                ),
                // Text positioned under the images
                Positioned(
                  bottom: 170,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Easy Appointments',
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 130,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: Text(
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                // Elevated button positioned under the text
                Positioned(
                  bottom: 70,
                  left: 20,
                  right: 20,
                  child: Center(
                    child: Container(
                      height: 50.h,
                      width: 260.w,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightGreen,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        home_screen2()));
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                fontSize: 17.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Center(
                        child: Container(
                            height: 40.h,
                            width: 260.w,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Login_Screen()));
                                  // Add the functionality for the new button

                                },
                                child: Text("Register",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )
                                )
                            )
                        )
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
