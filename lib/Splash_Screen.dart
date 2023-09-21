import 'package:doctorfinder/Utils/appimages.dart';
import 'package:doctorfinder/onbording_screen_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  initState(){
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>onbording_screen()));
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              child: Image(image: AssetImage(AppImages.splash_screen),)
            ),
            SizedBox(height: 10,),
            Container(
              child: Text("Doctor Hunt",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

            ),
          ],
        ),
      ),
    );
  }
}
