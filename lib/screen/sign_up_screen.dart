// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:proyekt_group/utils/colors.dart';
import 'package:proyekt_group/widgets/widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              SizedBox(height: 170.h),
              CustomTextField(icon: CupertinoIcons.mail, labelText: "Email"),
              SizedBox(height: 20.h),
              CustomTextField(icon: CupertinoIcons.lock, labelText: "Password"),
              SizedBox(height: 30.h),
              GestureDetector(
                child: CustomSign(text: "Sign Up"),
                onTap: () {
                  log("Sign in bosildi");
                },
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomLogoContain(
                    image: "assets/images/apple.png",
                    func: () => log("apple tugmasi bosildi"),
                  ),
                  SizedBox(width: 20.w),
                  CustomLogoContain(
                    image: "assets/images/facebook.png",
                    func: () => log("facebook tugmasi bosildi"),
                  ),
                  SizedBox(width: 20.w),
                  CustomLogoContain(
                    image: "assets/images/google.png",
                    func: () => log("google tugmasi bosildi"),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "If you have an account? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Sign In here",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
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

class CustomLogoContain extends StatelessWidget {
  final String image;
  final VoidCallback func;
  const CustomLogoContain({
    Key? key,
    required this.image,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: BoxDecoration(
            color: AppColors.elevetedButColor,
            borderRadius: BorderRadius.circular(10)),
        child: Image(
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}
