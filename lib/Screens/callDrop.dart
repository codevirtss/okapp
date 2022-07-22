import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:okapp/Screens/GetStartedScreen.dart';
import 'package:okapp/Screens/shareTheApp.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/ConstantMethods.dart';
import 'package:okapp/Utils/PrimaryButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CallDropScreen extends StatelessWidget {
  bool? fromVerifyNumber;
  CallDropScreen({Key? key, this.fromVerifyNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Reporting In Process",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
              height: 100.h,
              width: 100.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 194,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Kolors.primaryRed),
                      height: 7.0.h,
                      width: 7.0.h,
                      padding: EdgeInsets.all(2.5),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          Icons.check,
                          color: Kolors.primaryRed,
                          size: 23.0.sp,
                        ),
                      )),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    """Standby while we connect you
with the available emergency
contact
""",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Kolors.primaryGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.px),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    """Incase of a call drop,
click below to reconnect
""",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Kolors.primaryGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.px),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  PrimaryButton(
                      icon: Icons.call_end_outlined,
                      isIcon: true,
                      onPressed: () async {
                        await showKDialog(context, "Confirm End Reporting", () {
                          if (fromVerifyNumber!) {
                            Get.to(const ShareTheAppScreen());
                          } else {
                            Get.to(const GetStartedScreen());
                          }
                        }).show(context);
                      },
                      title: "Reconnect"),
                  SizedBox(
                    height: 66,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Kolors.primaryRed),
                      height: 7.0.h,
                      width: 7.0.h,
                      padding: EdgeInsets.all(2.5),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          Icons.close,
                          color: Kolors.primaryGrey,
                          size: 23.0.sp,
                        ),
                      )),
                ],
              ))),
    );
  }
}
