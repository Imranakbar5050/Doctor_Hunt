import 'package:doctorfinder/Utils/appimages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class Appointment_Screen2 extends StatefulWidget {
  const Appointment_Screen2({super.key});

  @override
  State<Appointment_Screen2> createState() => _Appointment_Screen2State();
}

class _Appointment_Screen2State extends State<Appointment_Screen2> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  int selectedIndex = -1;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.lightGreen,
                    width: 2.0,
                  ),
                ),
                child: TableCalendar(
                  firstDay: DateTime.now().subtract(Duration(days: 365)),
                  lastDay: DateTime.now().add(Duration(days: 365)),
                  focusedDay: _focusedDay,
                  calendarFormat: _calendarFormat,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  onFormatChanged: (format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  },
                  headerStyle: HeaderStyle(
                    titleTextStyle: TextStyle(
                      color: Colors.lightGreen, // Color for the top date row
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    formatButtonDecoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    formatButtonTextStyle: TextStyle(color: Colors.white),
                  ),
                  calendarStyle: CalendarStyle(
                    weekendTextStyle: TextStyle(color: Colors.black),
                    selectedTextStyle: TextStyle(color: Colors.white),
                    todayTextStyle: TextStyle(color: Colors.black),
                    todayDecoration: BoxDecoration(
                      color: Colors.lightGreen,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Colors.lightGreen,
                      shape: BoxShape.circle,
                    ),
                    outsideDaysVisible: false,
                    defaultTextStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),

            
            
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text('Avalible Time'),
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
              padding: const EdgeInsets.only(right: 220),
              child: Text('Reminder Me Before'),
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
            SizedBox(height: 10,),
            Container(
              height: 53,
              width: 200,
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
                              Text("Thank You!", style: TextStyle(fontSize: 25)),
                              SizedBox(height: 10),
                              Text("Your Appointment Successful",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
                              SizedBox(height: 10),
                              Center(child: Text("You booked an appointment with Dr. Pediatrician Purpieson on February 21, at 02:00 PM",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15))),
                          SizedBox(height: 10,),

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
                              SizedBox(height: 10,),
                              Text('Edit your appointment',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15))
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
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
