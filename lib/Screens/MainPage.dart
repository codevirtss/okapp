import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
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
              width: 34.0.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Kolors.primaryRed,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 1.h,
                    width: 17.0.w,
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
          SizedBox(
            height: 15.0.h,
          ),
          PrimaryButton(
            icon: Icons.call,
            isIcon: false,
            onPressed: () {
              log("Hello Yes", name: "Log");
            },
            title: "Connect",
          )
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
