import 'package:doctorfinder/Find_Doctor_Screen.dart';
import 'package:doctorfinder/Live_chat_screen.dart';
import 'package:doctorfinder/Popular_Doctor_Screen.dart';
import 'package:doctorfinder/Utils/appimages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Favourite_Doctors_Screen.dart';

class home_screen2 extends StatefulWidget {
  const home_screen2({super.key});

  @override
  State<home_screen2> createState() => _home_screen2State();
}

class _home_screen2State extends State<home_screen2> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 200,
            width: 400,
            color: Colors.lightGreen,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 10),
                  child: Column(
                    children: [
                      Text(
                        'Hi Handwerker!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Find Your Doctor',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Image(
                    image: AssetImage(AppImages.home_image2),
                    width: 70,
                    height: 70,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),


          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
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



          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text('Live Doctors',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )

                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 80),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Find_Doctor_Screen()
                              ),
                            );
                          },
                          child: Text(
                            'Find More Doctors>',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 5,
                ),



                SizedBox(
    height: 150.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4, // Replace this with your actual item count
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 10, left: index == 0 ? 20 : 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Live_chat_screen(imagePath: index % 2 == 0 ? AppImages.live_doctor1 : AppImages.live_doctor2),
                  ),
                );
              },
              child: Image(
                image: AssetImage(
                  index % 2 == 0 ? AppImages.live_doctor1 : AppImages.live_doctor2,
                ),
                height: 130,
                width: 130,
              ),
            ),
          );
        },
      ),
    ),

                SizedBox(
                  height: 150.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4, // Replace this with your actual item count
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Image(
                          image: AssetImage(
                            _getIconImage(index),
                          ),
                          height: 130,
                          width: 130,
                        ),
                      );
                    },
                  ),
                ),


                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text('Popular Doctor',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 145),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Popular_Doctor_Screen()
                              ),
                            );
                          },
                          child: Text(
                            'See all>',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                SizedBox(
                  height: 10,
                ),


                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4, // Replace this with your actual item count
                    itemBuilder: (context, index) {
                      List<String> doctorNames = [
                        "Dr Mahnoor",
                        "Dr Amna",
                        "Dr Kiran",
                        "Dr Huma"
                      ];
                      List<String> doctorDept = [
                        "Medicine Specialist",
                        "Dentist Specialist",
                        "Medicine Specialist",
                        "Dentist Specialist"
                      ];

                      return Padding(
                        padding: EdgeInsets.only(
                            top: 10, left: index == 0 ? 20 : 20),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(index % 2 == 0
                                  ? AppImages.live_doctor1
                                  : AppImages.live_doctor2),
                              height: 130,
                              width: 130,
                            ),

                            SizedBox(height: 10),
                            Text(
                              doctorNames[
                                  index], // Display the name based on the index
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 5),
                            Text(
                              doctorDept[
                                  index], // Display the name based on the index
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
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
                      );
                    },
                  ),
                ),



                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text('Feature Doctor',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 145),
                        child: Text('See all>'),
                      )
                    ],
                  ),
                ),


                SizedBox(
                  height: 10,
                ),




                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4, // Replace this with your actual item count
                    itemBuilder: (context, index) {
                      List<String> doctorNames = [
                        "Dr Mahnoor",
                        "Dr Amna",
                        "Dr Kiran",
                        "Dr Huma"
                      ];
                      List<String> doctorDept = [
                        "Rs 25.00/ hours",
                        "Rs 22.00/ hours",
                        "Rs 50.00/ hours",
                        "Rs 40.00/ hours"
                      ];

                      bool isFavorited = index % 2 == 0;

                      return Padding(
                        padding: EdgeInsets.only(
                            top: 10, left: index == 0 ? 20 : 20),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                width: 1.0), // Add border to the container
                            borderRadius: BorderRadius.circular(
                                8.0), // Add rounded corners to the container
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                // Add Row widget to place icons and text above the image
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    isFavorited
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                        color: Colors.red,
                                         size: 20,
                                  ),
                                  SizedBox(width: 40),
                                  Icon(
                                    isFavorited
                                        ? Icons.star
                                        : Icons.star_border, // Display the star or star_border icon
                                        color: Colors.yellow,
                                        size: 20,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    isFavorited
                                        ? "4.5"
                                        : "4.2", // Display the rating text based on the index
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              ClipOval(
                                // Wrap the image with ClipOval to make it circular
                                child: Image(
                                  image: AssetImage(index % 2 == 0
                                      ? AppImages.live_doctor1
                                      : AppImages.live_doctor2),
                                  height: 130,
                                  width: 130,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                doctorNames[
                                    index], // Display the name based on the index
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                doctorDept[
                                    index], // Display the name based on the index
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Favourite_Doctors_Screen()),
              );
            }
          });
        },
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:
             Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Reading',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_alt),
            label: 'Typing',
          ),
        ],
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  String _getIconImage(int index) {
    switch (index) {
      case 0:
        return AppImages.icon1;
      case 1:
        return AppImages.icon2;
      case 2:
        return AppImages.icon3;
      case 3:
        return AppImages.icon1;
      default:
        return AppImages.icon1;
    }
  }
}
