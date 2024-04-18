import 'package:add_image_in_app/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:add_image_in_app/screens/landing_page.dart';
import 'package:get/get.dart';
import '../auth/wrapper.dart';
import 'landing_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  signup()async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _nameController.text, password: _passwordController.text);
    Get.offAll(Wrapper());
  }

  final _formKey = GlobalKey<FormState>();
  bool _isPasswordValid = true;
  // var authService = AuthService();

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(_validatePassword);
  }

  @override
  void dispose() {
    _passwordController.removeListener(_validatePassword);
    _passwordController.dispose();
    super.dispose();
  }

  void _validatePassword() {
    setState(() {
      if (_passwordController.text.length >= 3) {
        _isPasswordValid = true;
      } else {
        _isPasswordValid = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: svgImageTop(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: svgImageBottom(),
          ),
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo.png',
                    width: 150.w,
                    height: 150.h,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Digital Serenity',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Create Account'),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: 'Email/Username',
                        hintStyle: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w300),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(250, 250, 250, 0.25),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w300),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                      onChanged: (val) {
                        if (val.length < 8) {
                          setState(() {
                            _isPasswordValid = false;
                          });
                        }
                      },
                    ),
                  ),
                  _isPasswordValid
                      ? const Text('')
                      : const Text(
                          'Password too short',
                          style:
                              TextStyle(color: CupertinoColors.destructiveRed),
                        ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    title: 'Sign Up',
                    onTap: (()=>signup()),
                  ),
                  SizedBox(height: 20.h),
                  const Divider(
                    thickness: 1.5,
                    indent: 60,
                    endIndent: 60,
                    color: Color.fromRGBO(83, 123, 143, 1.0),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20), // Adjust right padding as needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            print('1 tapped');
                            // Handle onTap for the first item
                          },
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: const BoxDecoration(
                              // color: Colors.lightBlue,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/images/google.svg',
                                width: 50.w,
                                height: 50.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w), // Add spacing between items
                        InkWell(
                          onTap: () {
                            print('2 tapped');
                            // Handle onTap for the second item
                          },
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: const BoxDecoration(
                              // color: Colors.lightBlue,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/images/facebook.svg',
                                width: 50.w,
                                height: 50.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w), // Add spacing between items
                        InkWell(
                          onTap: () {
                            print('3 tapped');
                            // Handle onTap for the third item
                          },
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: const BoxDecoration(
                              // color: Colors.lightBlue,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/images/twitter.svg',
                                width: 40.w,
                                height: 40.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
