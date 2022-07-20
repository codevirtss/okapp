import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/PrimaryButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CallDropScreen extends StatelessWidget {
  const CallDropScreen({Key? key}) : super(key: key);

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
                  Icon(
                    EvaIcons.checkmarkCircle2Outline,
                    color: Kolors.primaryRed,
                    size: 30.sp,
                  ),
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
                      icon: EvaIcons.phoneCall,
                      isIcon: true,
                      onPressed: () {},
                      title: "Reconnect"),
                  SizedBox(
                    height: 66,
                  ),
                    Icon(
                    Icons.cancel_outlined,
                    color: Kolors.primaryRed,
                    size: 30.sp,
                  ),
                ],
              ))),
    );
  }
}
