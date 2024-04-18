import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'onboarding_page.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  TextEditingController _useremail = TextEditingController();

  reset() async {
    FirebaseAuth.instance.sendPasswordResetEmail(email: _useremail.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 0, left: 0, child: svgImageTop()),
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
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SizedBox(
                    width: 300.w,
                    height: 50.h,
                    child: TextField(
                      controller: _useremail,
                      decoration: InputDecoration(
                        hintText: 'Enter Registered Email',
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
                SizedBox(height: 25.h),
                CustomButton(
                  title: 'Send Reset Link',
                  onTap: () {
                    reset();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Reset Link Sent !"),
                          content: Text("Reset link sent to your email."),
                          actions: [
                            TextButton(
                              onPressed: () {
                                // Close the dialog
                                Navigator.of(context).pop();
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
