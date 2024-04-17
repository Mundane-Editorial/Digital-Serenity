import 'dart:ui';

import 'package:add_image_in_app/screens/login_page.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:add_image_in_app/screens/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _My_Profile();
}

class _My_Profile extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
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
          Column(
            children: [
              SizedBox(height: 45.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  // border: Border.all(color: Colors.black),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10.w),
                    Builder(
                      builder: (newContext) {
                        return IconButton(
                          color: Colors.black,
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        );
                      },
                    ),
                    const Spacer(),
                    Builder(
                      builder: (newContext) {
                        return IconButton(
                          color: Colors.black,
                          icon: const Icon(Icons.settings),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Setting_Page()));
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).viewPadding.top + 100),
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 5,
                            blurRadius: 2,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child:  CircleAvatar(
                        radius: 90.r,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2.w),
                        ),
                        child: CircleAvatar(
                          radius: 15.r,
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            iconSize: 15,
                            icon: const Icon(
                                Icons.edit,
                                color: Colors.white),
                            onPressed: () {
                              // Handle edit action
                              Text('Edit pressed');
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Text(
                  'St. Xavier',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 45.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0.r),
                    ),
                    shape: BoxShape.rectangle ,
                    border: Border(

                      right: BorderSide(
                       color: Colors.grey,
                       style: BorderStyle.solid,
                      ),
                      top: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                      left: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                      bottom: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                    ),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.transparent,
                        spreadRadius: 5,
                        blurRadius: 2,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Name : ",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        ),
                      ),

                       SizedBox(width: 2.w),
                      Text("John Doe ",
                        style: TextStyle(
                          // color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10.h),
                Container(
                  height: 45.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0.r),
                    ),
                    shape: BoxShape.rectangle ,
                    border: Border(

                      right: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                      top: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                      left: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                      bottom: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                    ),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.transparent,
                        spreadRadius: 5,
                        blurRadius: 2,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Age : ",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      SizedBox(width: 2.w),
                      Text("21",
                        style: TextStyle(
                          // color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Divider(
                  endIndent: 10,
                  indent: 10,
                ),

                CustomButton(
                  title: 'Log out',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Log out",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        content: Text('Confirm log out ?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'cancel'),
                            child: const Text("cancel",
                            style: TextStyle(
                              color: Colors.lightBlue,
                            ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()),
                              );
                            },
                            child: const Text("ok",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                ),
                            ),
                          ),
                        ],
                      ),
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
