import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/material.dart';

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
            child: svgImageTop(), // Replace with svgImageTop() if needed
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: svgImageBottom(), // Replace with svgImageBottom() if needed
          ),
          Column(
            children: [
              SizedBox(height: 45),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  // border: Border.all(color: Colors.black),
                ),
                child: IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
