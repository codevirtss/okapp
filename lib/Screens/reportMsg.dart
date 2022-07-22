import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okapp/Screens/callDrop.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/KAppBar.dart';
import 'package:okapp/Utils/MainButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReportMsg extends StatelessWidget {
  const ReportMsg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              const KAppBar(title: "Report Message"),
              SizedBox(
                height: 175,
              ),
              Text(
                """Please attach 
a screenshot to report 
an event related to a caller.
""",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.px,
                    color: Kolors.primaryGrey),
              ),
              SizedBox(
                height: 83,
              ),
              Container(
                height: 51.px,
                width: 310.px,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16.5, bottom: 16.5, left: 15, right: 30),
                  child: Text(
                    "Upload screenshot",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.px,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Kolors.primaryGrey,
                    ),
                    borderRadius: BorderRadius.circular(10.px)),
              ),
              SizedBox(
                height: 40,
              ),
              MainButton(
                isIcon: false,
                onPressed: () {
                  Get.to(CallDropScreen(
                    fromVerifyNumber: false,
                  ));
                },
                title: "Submit",
              )
            ],
          ),
        ),
      ),
    );
  }
}
