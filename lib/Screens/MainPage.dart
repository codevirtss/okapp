import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okapp/Screens/VehicleNumber.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/KAppBar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Utils/PrimaryButton.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + 10.0.h,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade400.withOpacity(0.4),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 1.h,
              width: 30.0.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Kolors.primaryRed,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 1.h,
                    width: 15.0.w,
                  ),
                ],
              ),
            ),
          ),
          kSizedBox(),
          kSizedBox(),
          Text(
            "Confirm Vehicle",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.0.sp,
                fontWeight: FontWeight.bold),
          ),
          kSizedBox(),
          Text(
            "Please enter the vehicle number once again\n to report an event for.",
            style: TextStyle(
                color: Kolors.primaryGrey,
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          kSizedBox(),
          kSizedBox(),
          // SizedBox(
          //   height: 35.0.h,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(20.0.sp)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 1)
                    ]),
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 23.0.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4A4A6A)),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      alignLabelWithHint: false,
                    ),
                  ),
                ),
                height: 9.h,
                width: 9.0.h,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(20.0.sp)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 1)
                    ]),
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 23.0.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4A4A6A)),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      alignLabelWithHint: false,
                    ),
                  ),
                ),
                height: 9.h,
                width: 9.0.h,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(20.0.sp)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 1)
                    ]),
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 23.0.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4A4A6A)),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      alignLabelWithHint: false,
                    ),
                  ),
                ),
                height: 9.h,
                width: 9.0.h,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(20.0.sp)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 1)
                    ]),
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 23.0.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4A4A6A)),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      alignLabelWithHint: false,
                    ),
                  ),
                ),
                height: 9.h,
                width: 9.0.h,
              ),
            ],
          ),
          kSizedBox(),
          SizedBox(
            height: 25.0.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0.w),
            child: Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    isIcon: false,
                    onPressed: () {
                      Get.to(const VehicleNumber());
                      log("Hello Yes", name: "Log");
                    },
                    title: "Proceed",
                  ),
                ),
              ],
            ),
          ),
          kSizedBox(),
          kSizedBox(),
          Text(
            "By continuing, I agree to the Terms of Use &\nPrivacy Policy",
            style: TextStyle(
                color: Kolors.primaryGrey,
                fontSize: 14.5.sp,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  SizedBox kSizedBox() {
    return SizedBox(
      height: 3.0.h,
    );
  }
}
