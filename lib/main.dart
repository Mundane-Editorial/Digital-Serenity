import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // final SplitScreenMode _splitScreenMode = SplitScreenMode();

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(460,920),
      builder: (context , child) {
        return MaterialApp(
          title: 'Digital Serenity',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(fontSize: 18.0.sp, color: Colors.blueGrey),
                ),
              ),
            ),
          ),
          home: const OnboardingPage(),
        );
      }
    );
  }
}
