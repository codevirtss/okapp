import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okapp/Screens/VerifyNumberScreen.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/PrimaryButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.backgroundColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.0.h,
              ),
              Center(
                child: Text(
                  "okwale.com",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Center(
                child: Text(
                  "Let\'s Get Started",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 3.0.h,
              ),
              Text(
                "We will send an OTP\n to your mobile number\nto begin reporting the event",
                style: TextStyle(
                    color: Kolors.primaryGrey,
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(3.0.w)),
                    border:
                        Border.all(color: Colors.grey.shade400, width: 0.4)),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.5.sp,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 3.0.w, vertical: 1.5.h),
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(
                        color: Kolors.primaryGrey,
                        fontSize: 16.5.sp,
                        fontWeight: FontWeight.w600),
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
              SizedBox(
                height: 20.0.h,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "By continuing, I agree to the Terms of Use &\nPrivacy Policy",
                style: TextStyle(
                    color: Kolors.primaryGrey,
                    fontSize: 14.5.sp,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3.0.h,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 5.0.w),
                child: PrimaryButton(
                    isIcon: false,
                    onPressed: () {
                      Get.to(const VerifyNumberScreen());
                    },
                    title: "Continue"),
              ),
              SizedBox(
                height: 5.0.h,
              ),
            ],
          )
        ],
      )),
    );
  }
}
