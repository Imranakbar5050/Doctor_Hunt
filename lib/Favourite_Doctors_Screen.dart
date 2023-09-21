import 'package:doctorfinder/Details_Doctor.dart';
import 'package:doctorfinder/Home_Screen.dart';
import 'package:doctorfinder/Popular_Doctor_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Utils/appimages.dart';

class Favourite_Doctors_Screen extends StatefulWidget {
  const Favourite_Doctors_Screen({super.key});

  @override
  State<Favourite_Doctors_Screen> createState() =>
      _Favourite_Doctors_ScreenState();
}

class _Favourite_Doctors_ScreenState extends State<Favourite_Doctors_Screen> {
  bool isFavorited = false;
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('Favourite_Doctors'),
        ),
        body: Column(children: [
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
          SizedBox(
            height: 20,
          ),

          Expanded(
              child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 5,
              ),


              SizedBox(
                height: 365,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
                      padding:
                          EdgeInsets.only(top: 10, left: index == 0 ? 10 : 10),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Details_Doctor()),
                                    );
                                  },
                                  child: Image(
                                    image: AssetImage(index % 2 == 0
                                        ? AppImages.live_doctor1
                                        : AppImages.live_doctor2),
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    isFavorited
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isFavorited = !isFavorited;
                                    });
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 35),
                              child: Text(
                                doctorNames[
                                    index], // Display the name based on the index
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 35),
                              child: Text(
                                doctorDept[
                                    index], // Display the name based on the index
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
SizedBox(height: 20,),
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
          )
          )
        ]
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => home_screen2()),
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
}
