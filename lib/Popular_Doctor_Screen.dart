import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Utils/appimages.dart';

class Popular_Doctor_Screen extends StatefulWidget {
  const Popular_Doctor_Screen({super.key});

  @override
  State<Popular_Doctor_Screen> createState() => _Popular_Doctor_ScreenState();
}

class _Popular_Doctor_ScreenState extends State<Popular_Doctor_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        actions: [Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.search),)
      ],
      ),

      body: Column(
        children: [
          SizedBox(height: 20,),

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
                    child: Text(
                      'See all>',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

              ],
            ),
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
                  padding: EdgeInsets.only(top: 10, left: index == 0 ? 20 : 20),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
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
                  ),
                );
              },
            ),
          ),

        SizedBox(height: 20,),

          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text('Category',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )

                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                SizedBox(
                  height: 260,
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
                                        children:
                                        List.generate(5, (starIndex) {
                                          return Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 20,
                                          );
                                        }

                                        ),

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 70),
                                        child: Text(
                                          isFavorited
                                              ? "4.5"
                                              : "4.2", // Display the rating text based on the index
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30,bottom: 70),
                                    child: Icon(
                                      isFavorited
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 10),





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
