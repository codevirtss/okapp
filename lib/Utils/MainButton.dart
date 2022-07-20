

import 'package:flutter/material.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final bool isIcon;
  final Function onPressed;
  const MainButton(
      {Key? key,
      this.icon,
      required this.isIcon,
      required this.onPressed,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 30.sp,
        width: 72.sp,
        child: Center(
          child: Text("$title",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0.sp),
          ),
        ),
        decoration: BoxDecoration(
          color: Kolors.primaryRed,
          borderRadius: BorderRadius.circular(20.sp)
        ),
      ),
    );
   
  }
}
