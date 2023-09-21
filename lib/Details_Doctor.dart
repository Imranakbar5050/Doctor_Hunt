import 'package:doctorfinder/Appointment_Screen.dart';
import 'package:doctorfinder/Home_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Utils/appimages.dart';

class Details_Doctor extends StatefulWidget {
  const Details_Doctor({super.key});

  @override
  State<Details_Doctor> createState() => _Details_DoctorState();
}

class _Details_DoctorState extends State<Details_Doctor> {
  bool isFavorited = false;
  int selectedIndex = -1;
  int selectedColumnIndex = -1;

  // Define dates and availability here
  List<String> rupes = [
    '100',
    '300',
    '500',
  ];

  List<String> types = [
    'runing',
    'ongoing',
    'Patient',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Details"),
        backgroundColor: Colors.lightGreen,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Column(children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 160,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Image(
                  image: AssetImage(AppImages.live_doctor1),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: Text(
                          'Dr Mahnoor',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text('Upasana Dental Clinic'),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text(
                          'D.2800/hr',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: List.generate(
                          5,
                          (starIndex) {
                            return Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            );
                          },
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Appointment_Screen()),
                          );
                        },
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 270,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ), // Border around all items
            borderRadius: BorderRadius.circular(8.0),
          ),
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
                        borderRadius: BorderRadius.circular(8.0),
                        color:
                            isSelected ? Colors.lightGreen : Colors.transparent,
                      ),
                      child: Column(
                        children: [
                          Text(
                            rupes[index],
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            types[index],
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.normal),
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
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView(physics: BouncingScrollPhysics(), children: [
          SizedBox(
            height: 5,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 220),
                    child: Text(
                      'Services :',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                        '1.   Patient care should be the number one priority.'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                        '2.   If you run your practiceyou know how frustrating.'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('3.   That’s why some of appointment reminder system.'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8.0), // Optional padding around the image
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.white30, width: 9.0), // Border around the image
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Image(
              image: AssetImage(AppImages.location),
            ),
          ),
        ]))
      ]),
    );
  }
}
