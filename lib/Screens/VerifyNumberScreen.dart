import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okapp/Screens/callDrop.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/PrimaryButton.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerifyNumberScreen extends StatelessWidget {
  const VerifyNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.backgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 10.0.h,
          ),
          Center(
            child: Text(
              "Verify your number",
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
            "Enter the code that\nwe just sent a 4 digit code\nto your mobile number",
            style: TextStyle(
                color: Kolors.primaryGrey,
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5.0.h,
          ),
          buildPinPut(),
          SizedBox(
            height: 5.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Didn\'t recieved the code?",
                style: TextStyle(
                    color: Kolors.primaryGrey,
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              Text(
                " Resend Code",
                style: TextStyle(
                    color: Kolors.primaryRed,
                    fontSize: 16.5.sp,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0.w),
              width: double.infinity,
              child: PrimaryButton(
                  isIcon: false,
                  onPressed: () {
                    Get.to(CallDropScreen(
                      fromVerifyNumber: true,
                    ));
                  },
                  title: "Verify"))
        ],
      )),
    );
  }

  Widget buildPinPut() {
    return Pinput(
      onCompleted: (pin) => print(pin),
    );
  }
}
