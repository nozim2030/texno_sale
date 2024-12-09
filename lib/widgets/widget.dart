import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proyekt_group/utils/colors.dart';

class CustomSign extends StatelessWidget {
  final String text;
  const CustomSign({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.greenColor, borderRadius: BorderRadius.circular(10)),
      alignment: Alignment(0, 0),
      height: 50.h,
      width: double.infinity,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String labelText;
  const CustomTextField({
    Key? key,
    required this.icon,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: CupertinoTextField(
        placeholder: labelText,
        prefix: Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(icon, color: AppColors.elevetButtWidgetsColor),
        ),
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: CupertinoColors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: AppColors.elevetButtWidgetsColor,
          ),
        ),
      ),
    );
  }
}

class WhiteText extends StatelessWidget {
  final double size;
  final String text;
  final FontWeight fontWeight; // Yangi parametr
  const WhiteText({
    Key? key,
    required this.size,
    required this.text,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size.sp,
        fontWeight: fontWeight,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    );
  }
}
