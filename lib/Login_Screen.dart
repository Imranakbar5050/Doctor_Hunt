import 'package:doctorfinder/Home_Screen.dart';
import 'package:doctorfinder/SignUp_Screen.dart';
import 'package:doctorfinder/Utils/appimages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {


  bool showPassword = true;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors. lightGreen,
        title: Center(
          child: Text("Login Screen"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Login ',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),
          ),
          SizedBox(
            height: 2,
          ),
          Text("Login to your Account"),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 250,
            width: 200,
            child: Image.asset(AppImages.login_Image),

          ),

          SizedBox(
            height: 2,
          ),
          Column(
            children: [
              Container(
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 340,
                child: TextFormField(
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      suffixIcon: InkWell(
                          onTap: _showPassword,
                          child: Icon(Icons.visibility_off_outlined)),

                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                    onPressed: () {
                      // Show an AlertDialog
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 600,
                            width: 400,
                            child: SingleChildScrollView(
                              child: AlertDialog(
                                title: Column(
                                  children: [
                                    Text("Forgot Password!", style: TextStyle(fontSize: 25)),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Enter your email for the verification proccesss,we will send 4 digits code to your email.",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 340,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Email",
                                            prefixIcon: Icon(Icons.email),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10))),
                                      ),
                                    ),
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
                                            "Continue",
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
                            ),
                          );
                        },
                      );
                    },
                    child: Text('Forgot Password?' , style: TextStyle(fontSize: 18,color: Colors.red),))
            ),
          ),
          SizedBox(
            height:1,
          ),
          Column(
            children: [
              Container(
                width: 330,
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
                            builder: (context) => home_screen2(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Row(
                        children: [
                          Icon(Icons.lock),
                          SizedBox(width: 10,),
                          Text(
                            "Log in",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    )),
              )
            ],

          ),
          SizedBox(
            height: 1,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 90, right: 10),
            child: Row(
              children: [
                Text('Dont have an account?',style: TextStyle(fontSize: 17),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_Screen(),));
                }, child: Text('SignUp' , style: TextStyle(fontSize: 18,color: Colors.red),))
              ],
            ),
          )

        ]),
      ),
    );
  }
  void _showPassword() {
    setState(() {
      showPassword=!showPassword;

    });
  }

}
