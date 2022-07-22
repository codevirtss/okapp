import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ndialog/ndialog.dart';
import 'package:okapp/Screens/OffersScreen.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/KAppBar.dart';
import 'package:okapp/Utils/MainButton.dart';
import 'package:okapp/Utils/PrimaryButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Utils/ConstantMethods.dart';

class DownloadPdfScreen extends StatelessWidget {
  const DownloadPdfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.backgroundColor,
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              const KAppBar(title: "Download PDF"),
              SizedBox(
                height: 88,
              ),
              Text(
                "Print Your Card",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                "Use this ID inside your wallet or on\nthe back of your mobile phone",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Kolors.primaryGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.px),
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                height: 51.px,
                width: 310.px,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16.5, bottom: 16.5, left: 15, right: 30),
                  child: Text(
                    "Select Your Blood Group",
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
                height: 111,
              ),
              Text(
                """By continuing, I agree to the Terms of Use & 
Privacy Policy
""",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Kolors.primaryGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.px),
              ),
              MainButton(
                  isIcon: false,
                  onPressed: () async {
                    await showKDialog(context, "Confirm End Reporting", () {
                      Get.to(const OffersScreen());
                    }).show(context);
                  },
                  title: "Download"),
            ],
          ),
        ),
      ),
    );
  }
}
