import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:add_image_in_app/screens/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
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
          //todo :: helo and support page
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
                                builder: (context) => const Setting_Page(),
                              ),
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
        ],
      ),
    );
  }
}
