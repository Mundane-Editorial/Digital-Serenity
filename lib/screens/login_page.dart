import 'package:add_image_in_app/screens/landing_page.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: svgImageTop()
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: svgImageBottom(),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // SizedBox(height: MediaQuery.of(context).viewPadding.top + 200),
                SizedBox(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 150.w,
                    height: 150.h,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Digital Serenity',
                  style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SizedBox(
                    width: 300.w,
                    height: 50.h,
                    child: TextField(
                      controller: _username,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: const TextStyle(fontWeight: FontWeight.w300),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(250, 250, 250, 0.25),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                SizedBox(
                  width: 300.w,
                  height: 50.h,
                  child: TextField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(fontWeight: FontWeight.w300),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      filled: true,
                      fillColor: const Color.fromRGBO(250, 250, 250, 0.25),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                CustomButton(
                  title: 'Login',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingPage()));
                  },
                ),
                SizedBox(height: 20.h),
                Text(
                  "New Here ?",
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                // const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: GestureDetector(
                    onTap: () {
                      // kuch ni krra abhi ye button
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()),
                      );
                    },
                    child:  Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 20.sp,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
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
