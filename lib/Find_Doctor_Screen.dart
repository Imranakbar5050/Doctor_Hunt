import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Live_chat_screen.dart';
import 'Select_time_screen.dart';
import 'Utils/appimages.dart';

class Find_Doctor_Screen extends StatefulWidget {
  const Find_Doctor_Screen({super.key});

  @override
  State<Find_Doctor_Screen> createState() => _Find_Doctor_ScreenState();
}

class _Find_Doctor_ScreenState extends State<Find_Doctor_Screen> {
  bool isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Find Doctor"),

      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  suffixIcon: InkWell(child: Icon(Icons.group_work_sharp)),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
         SizedBox(height: 20,),

          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 5,
                ),

                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 4, // Replace this with your actual item count
                    itemBuilder: (context, index) {
                      List<String> doctorNames = [
                        "Dr Mahnoor",
                        "Dr Amna",
                        "Dr Kiran",
                        "Dr Huma"
                      ];
                      List<String> doctortimimg = [
                        "10AM Tomorrow",
                        "11AM Tomorrow",
                        "12AM Tomorrow",
                        "1AM Tomorrow"
                      ];
                      List<String> doctorteperince = [
                        "9 year Experience",
                        "8 year Experience",
                        "3 year Experience",
                        "7 year Experience"
                      ];
                      List<String> doctortpersentage = [
                        "75%",
                        "90%",
                        "30%",
                        "50%"
                      ];
                      List<String> patientstore = [
                        "75 patient ",
                        "90 patient ",
                        "30 patient ",
                        "50 patient "
                      ];
                      bool isFavorited = index % 2 == 0;

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 10),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(index % 2 == 0
                                        ? AppImages.live_doctor1
                                        : AppImages.live_doctor2),
                                    height: 130,
                                    width: 130,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        doctorNames[
                                        index], // Display the name based on the index
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text("Tooths Dentist",style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,),),
                                      Text(
                                        doctorteperince[
                                        index], // Display the name based on the index
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.circle,color: Colors.blue,),
                                          Text(
                                            doctortpersentage[
                                            index], // Display the name based on the index
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Icon(Icons.circle,color: Colors.green,),
                                          Text(
                                            patientstore[
                                            index], // Display the name based on the index
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),

                                        ],
                                      )


                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, bottom: 70),
                                    child: IconButton(
                                      icon: Icon(
                                        isFavorited ? Icons.favorite : Icons.favorite_border,
                                        color: Colors.red,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          // Toggle the favorite status
                                          isFavorited = !isFavorited;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
SizedBox(height: 10),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text('Next Avalible',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),),
                                    ),
                                    Text(
                                      doctortimimg[
                                      index], // Display the name based on the index
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],

                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 80,bottom: 10),
                                  child: Container(
                                    height: 40.h,
                                    width: 130.w,
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
                                                      Select_time_screen(imagePath: index % 2 == 0 ? AppImages.live_doctor1 : AppImages.live_doctor2,doctorName: doctorNames[index],doctorteperince: doctorteperince[index]

                                                        )));
                                        },
                                        child: Text(
                                          "Book Now",
                                          style: TextStyle(
                                              fontSize: 17.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
