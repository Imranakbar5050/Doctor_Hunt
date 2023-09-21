import 'package:doctorfinder/Utils/appimages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login_Screen.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  bool showPassword2 = true;

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text("SignUp")),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(child:
                Text('SignUp Page', style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 10,
                ),
                Text("Create an Account, it's free"),
                SizedBox(
                  height: 1,
                ),
                Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.signup_image)
                        )
                    )

                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "UserName",
                        filled: true,
                        prefixIcon: Icon(Icons.textsms_rounded),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),)
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        filled: true,
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
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
                            borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    obscureText: showPassword2,
                    decoration: InputDecoration(
                        hintText: "Conform Password",
                        filled: true,
                        suffixIcon: InkWell(
                            onTap: _showPassword2,
                            child: Icon(Icons.visibility_off_outlined)),
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => Login_Screen()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 10),
                  child: Row(
                    children: [
                      Text('Already Have an Account?',
                        style: TextStyle(fontSize: 15),),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Login_Screen(),));
                      }, child: Text('SignIn', style: TextStyle(fontSize: 18,
                          color: Colors.red),))
                    ],
                  ),
                ),
              ],

            ),
          ),

        ),

      ),
    );
  }


  void _showPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void _showPassword2() {
    setState(() {
      showPassword2 = !showPassword2;
    });
  }
}
