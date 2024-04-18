import 'package:add_image_in_app/auth/wrapper.dart';
import 'package:add_image_in_app/screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

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
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).viewPadding.top + 200),
                SizedBox(
                  height: 250.h,
                  width: 250.w,
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Digital Serenity',
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 55.h),
                CustomButton(
                    title: 'Continue',
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (_) => const Wrapper(),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  final TextStyle? titleStyle;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.width,
    this.height,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 50.h,
        width: width ?? MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(4, 35, 53, 1.0),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: const Offset(0, 5),
              blurRadius: 5,
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.robotoCondensed(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

Widget svgImageTop() {
  return SizedBox(
    height: 210.h,
    width: 210.w,
    child: SvgPicture.asset(
      'assets/images/Background.svg',
      fit: BoxFit.cover,
    ),
  );
}

Widget svgImageBottom() {
  return SizedBox(
    height: 250.h,
    width: 250.w,
    child: Transform.rotate(
      angle: 3.14,
      child: SvgPicture.asset(
        'assets/images/Background.svg',
        fit: BoxFit.cover,
      ),
    ),
  );
}
