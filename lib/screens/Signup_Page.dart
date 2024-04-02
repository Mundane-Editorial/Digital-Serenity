import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.black,
            width: 100,
            height: 100,
          ),
          Divider(color: Colors.red,thickness: 3,indent: 20,endIndent: 20,),

          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(

              shape: BoxShape.circle,
              gradient: LinearGradient(
                  transform: GradientRotation(5.02) ,
                  colors:[
                    Colors.blue,
                    Colors.red,
                  ],

              ),

            ),
          ),

        ],
      ),
    );
  }
}


