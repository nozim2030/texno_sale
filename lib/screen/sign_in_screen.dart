// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:proyekt_group/utils/colors.dart';
import 'package:proyekt_group/widgets/widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/fon1.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 120.h,
          left: 20.w,
          right: 20.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const WhiteText(
                text: "Audio",
                size: 50,
              ),
              const WhiteText(
                size: 15,
                text: "It's modular and designed to last",
              ),
              SizedBox(height: 240.h),
              CustomTextField(icon: CupertinoIcons.mail, labelText: "Email"),
              SizedBox(height: 20.h),
              CustomTextField(icon: CupertinoIcons.lock, labelText: "Password"),
              SizedBox(height: 30.h),
              Text(
                "Forgot Password",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 30.h),
              CustomSign(text: "Sign In"),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't have any account? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Sign Up here",
                    style: TextStyle(
                      color: AppColors.greenColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
