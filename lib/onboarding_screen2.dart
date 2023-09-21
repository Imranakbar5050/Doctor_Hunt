import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Utils/appimages.dart';
import 'onbording_screen3.dart';

class onboarding_screen2 extends StatefulWidget {
  const onboarding_screen2({super.key});

  @override
  State<onboarding_screen2> createState() => _onboarding_screen2State();
}

class _onboarding_screen2State extends State<onboarding_screen2> {
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
                    padding: const EdgeInsets.only(bottom: 362,left: 155),
                    child: Image(image: AssetImage(AppImages.onboart_image4)),
                  ),
                ),
                // The second image on top of the first image
                Positioned.fill(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(bottom: 200, left: 10,),
                    child: Image(image: AssetImage(AppImages.onboart_image3)),
                  ),
                ),
                // Text positioned under the images
                Positioned(
                  bottom: 170,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Choose Best Doctors',
                      style: TextStyle(
                        fontSize: 27.sp,
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
                                        onbording_screen3()));
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
                                              onbording_screen3()));
                                  // Add the functionality for the new button

                                },
                                child: Text("Skip",
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
