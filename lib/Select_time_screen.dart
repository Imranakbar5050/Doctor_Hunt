import 'package:doctorfinder/Select_time_screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Utils/appimages.dart';

class Select_time_screen extends StatefulWidget {
  final String imagePath;
  final String doctorName;
  final String doctorteperince;
  // Add this parameter
  const Select_time_screen({ required this.imagePath,required this.doctorName,required this.doctorteperince,super.key,});

  @override
  State<Select_time_screen> createState() => _Select_time_screenState();
}

class _Select_time_screenState extends State<Select_time_screen> {
  bool isFavorited = false;
  int selectedIndex = -1;
  int selectedColumnIndex = -1;

  // Define dates and availability here
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
  List<String> doctorNames = [
    "Dr Mahnoor",
    "Dr Amna",
    "Dr Kiran",
    "Dr Huma"
  ];
  List<String> doctorteperince = [
    "9 year Experience",
    "8 year Experience",
    "3 year Experience",
    "7 year Experience"
  ];

  bool isContainerClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Select Time"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),

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

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 100.h,
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
          SizedBox(height: 10,),
          Container(
            child: Column(
              children: [
                Text("Today, 23 Feb",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                Text("No slots avalible",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal)),
              ],
            ),
          ),
          SizedBox(height: 20,),

          GestureDetector(
            onTap: () {
              setState(() {
                isContainerClicked = !isContainerClicked;
              });
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.circular(8.0),
                color: isContainerClicked ? Colors.lightGreen : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  "Next availability on wed, 24 Feb",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text('OR',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Container(

            width: 200,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(8.0),
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Select_time_screen2(imagePath: widget.imagePath,
                          doctorName: widget.doctorName,
                          doctorteperince: widget.doctorteperince,),
                      ));
                },
                child: Text(
                  "Contact Clinic",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
