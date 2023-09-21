import 'package:doctorfinder/Find_Doctor_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Utils/appimages.dart';

class Select_time_screen2 extends StatefulWidget {
  final String imagePath;
  final String doctorName;
  final String doctorteperince;
  const Select_time_screen2({required this.imagePath,required this.doctorName,required this.doctorteperince,super.key,});

  @override
  State<Select_time_screen2> createState() => _Select_time_screen2State();
}

class _Select_time_screen2State extends State<Select_time_screen2> {
  bool isFavorited = false;
  int selectedIndex = -1;

  List<String> dates = [
    'Today, 23 Feb',
    'Tomorrow, 24 Feb',
    'Thursday, 25 Feb',
  ];

  List<String> availability = [
    'No slots available',
    '9 slots available',
    '20 slots available',
  ];

  List<String> time = [
    '1:00 PM',
    '5:00 PM',
    '9:00 PM',
    '4:00 PM',
    '2:00 PM',
];
    List<String> time2 = [
    '7:00 PM',
    '4:00 PM',
    '2:00 PM',

  ];

  bool isContainerClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Select Time"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(widget.imagePath),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 30),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(widget.doctorName,
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(widget.doctorteperince),
                          SizedBox(height: 5),
                          Row(
                            children: List.generate(5, (starIndex) {
                              return Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60),
                      child: IconButton(
                        icon: Icon(
                          isFavorited ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red,
                          size: 30,
                        ),
                        onPressed: () {
                          setState(() {
                            isFavorited = !isFavorited;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 90.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3, // Replace this with your actual item count
                  itemBuilder: (context, index) {
                    bool isSelected = index == selectedIndex;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                            color: isSelected ? Colors.lightGreen : Colors.transparent,
                          ),
                          child: Column(
                            children: [
                              Text(
                                dates[index],
                                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                availability[index],
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                              ),

                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              child: Column(
                children: [
                  Text("Today, 23 Feb",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),

                ],
              ),
            ),
            SizedBox(height: 5,),
           Padding(
             padding: const EdgeInsets.only(right: 240),
             child: Text('Afternoon 7 Slot'),
           ),
            SizedBox(
              height: 50.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Replace this with your actual item count
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedIndex;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        padding: EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                          color: isSelected ? Colors.lightGreen : Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Text(
                              time[index],
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 50.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3, // Replace this with your actual item count
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedIndex;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        padding: EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                          color: isSelected ? Colors.lightGreen : Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Text(
                              time2[index],
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text('Evening 5 Slot'),
            ),
            SizedBox(
              height: 50.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Replace this with your actual item count
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedIndex;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        padding: EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                          color: isSelected ? Colors.lightGreen : Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Text(
                              time[index],
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 60.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3, // Replace this with your actual item count
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedIndex;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        padding: EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                          color: isSelected ? Colors.lightGreen : Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Text(
                              time2[index],
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Find_Doctor_Screen()),
                        );
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        // Show an AlertDialog
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 500,
                              width: 400,
                              child: AlertDialog(
                                title: Column(
                                  children: [
                                    Image(image: AssetImage(AppImages.thank_you)),
                                    SizedBox(height: 20,),
                                    Container(
                                      height: 50,
                                      width: 220,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.lightGreen,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop(); // Close the dialog
                                          },
                                          child:
                                          Text(
                                            "Done",
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                      ),

                                    ),
                                  ],
                                ),

                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        "Conform",
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            

          ],
        ),
      ),
    );
  }
}
