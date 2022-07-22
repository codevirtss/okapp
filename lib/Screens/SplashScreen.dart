import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:okapp/Screens/AboutScreen.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/PrimaryButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getWidget(_selectedIndex),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 5.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Skip",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.bold),
                ),
                !(_selectedIndex == 3)
                    ? SizedBox(
                        width: 35.0.w,
                        child: PrimaryButton(
                            isIcon: false,
                            onPressed: () {
                              setState(() {
                                _selectedIndex = _selectedIndex + 1;
                              });
                            },
                            title: "Next"))
                    : SizedBox(
                        width: 35.0.w,
                        child: PrimaryButton(
                            isIcon: false,
                            onPressed: () {
                              Get.to(const ABoutScreen());
                            },
                            title: "Start"))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getWidget(int index) {
    switch (index) {
      case 1:
        return getStep1();
      case 2:
        return getStep2();
      case 3:
        return getStep3();
      default:
        return getStep1();
    }
  }

  Column getStep1() {
    return Column(
      children: [
        SizedBox(
          height: 10.0.h,
        ),
        Center(
          child: Text(
            "Use Our Code\n On Your Design",
            style: TextStyle(
                color: Colors.black,
                fontSize: 22.0.sp,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Center(
          child: SizedBox(
            height: 15.0.h,
            width: 15.0.h,
            child: Image.asset(
              "assets/shape.png",
            ),
          ),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Text(
            "Connect our automated emergency contacts calling platform to your design or order our merchandise",
            style: TextStyle(
                color: Kolors.primaryGrey,
                fontSize: 17.0.sp,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 3.0.h,
        ),
      ],
    );
  }

  Column getStep2() {
    return Column(
      children: [
        SizedBox(
          height: 10.0.h,
        ),
        Center(
          child: Text(
            "No Information \nShared or Displayed",
            style: TextStyle(
                color: Colors.black,
                fontSize: 22.0.sp,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Center(
          child: SizedBox(
            height: 15.0.h,
            width: 15.0.h,
            child: Image.asset(
              "assets/shape2.png",
            ),
          ),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Text(
            "No contact information of the user or the emergency contacts are shared with the response teams",
            style: TextStyle(
                color: Kolors.primaryGrey,
                fontSize: 17.0.sp,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 3.0.h,
        ),
      ],
    );
  }

  Column getStep3() {
    return Column(
      children: [
        SizedBox(
          height: 10.0.h,
        ),
        Center(
          child: Text(
            "One Code\nUnlimited Possibilities",
            style: TextStyle(
                color: Colors.black,
                fontSize: 22.0.sp,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Center(
          child: SizedBox(
            height: 15.0.h,
            width: 15.0.h,
            child: Image.asset(
              "assets/shape3.png",
            ),
          ),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Text(
            "ID Cards, Phone Lock Screen, Vehicle Tags, Bag Tags, Keychains, Stickers.  Buy or design your own",
            style: TextStyle(
                color: Kolors.primaryGrey,
                fontSize: 17.0.sp,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 3.0.h,
        ),
      ],
    );
  }
}
