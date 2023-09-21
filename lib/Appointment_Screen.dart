import 'dart:io';

import 'package:doctorfinder/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import 'Appointment_Screen2.dart';
import 'Utils/appimages.dart';

class Appointment_Screen extends StatefulWidget {
  const Appointment_Screen({super.key});

  @override
  State<Appointment_Screen> createState() => _Appointment_ScreenState();
}

class _Appointment_ScreenState extends State<Appointment_Screen> {
  File? _image;
  int _currentIndex = 0;

  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      _image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Doctor Appointment"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Patient Name",
                    prefixIcon: Icon(Icons.message),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Patient Contact",
                    prefixIcon: Icon(Icons.message_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: Text(
                'Who is this patient? :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => getImage(ImageSource.gallery),
              child: _image != null
                  ? Image.file(
                _image!,
                width: 280,
                height: 130,
                fit: BoxFit.cover,
              )
                  : Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Image(
                  image: AssetImage(AppImages.live_doctor1),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              children: [
                CustomButton(
                  title: '',
                  icon: Icons.image_outlined,
                  onClick: () => getImage(ImageSource.gallery),
                  backgroundColor: Colors.lightGreen, // Add this line
                ),
                CustomButton(
                  title: '',
                  icon: Icons.camera,
                  onClick: () => getImage(ImageSource.camera),
                  backgroundColor: Colors.lightGreen, // Add this line
                ),
                SizedBox(width: 20,),
                Container(
                  height: 53,
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
                            builder: (context) => Appointment_Screen2()),
                      );
                    },
                    child: Text(
                      "Next",
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
          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
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

class CustomButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() onClick;
  final Color backgroundColor; // Add this line

  const CustomButton({
    required this.title,
    required this.icon,
    required this.onClick,
    required this.backgroundColor, // Add this line
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          height: 50,
          width: 100,
          child: ElevatedButton(
            onPressed: onClick,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor, // Use the provided background color
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(icon),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Appointment_Screen(),
  ));
}
