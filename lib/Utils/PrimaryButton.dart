import 'package:flutter/material.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final bool isIcon;
  final Function onPressed;
  const PrimaryButton(
      {Key? key,
      this.icon,
      required this.isIcon,
      required this.onPressed,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          isIcon
              ? Icon(
                  icon,
                  color: Colors.white,
                )
              : const SizedBox(),
          SizedBox(
            width: 3.0.w,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16.0.sp),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          elevation: 1,
          padding: EdgeInsets.symmetric(horizontal: 6.0.w, vertical: 2.h),
          primary: Kolors.primaryRed,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3.2.w)))),
    );
  }
}
