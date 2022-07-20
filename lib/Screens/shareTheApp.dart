import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Utils/KAppBar.dart';

class ShareTheAppScreen extends StatelessWidget {
  const ShareTheAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
                height: 100.h,
                width: 100.w,
                child: Column(children: [
                  KAppBar(title: "Share the App"),
                  SizedBox(
                    height: 222,
                  ),
                  Text(
                    "ABC90234528390",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.px),
                  ),
                  Text(
                    "Is your referral code",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.px,
                        color: Kolors.primaryGrey),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  DottedBorder(
                    color: Kolors.primaryRed,
                    borderType: BorderType.Rect,
                    radius: Radius.circular(12),
                    padding: EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Container(
                        height: 52.px,
                        width: 163.px,
                        child: Center(
                          child: Text(
                            "Copy Referal Code",
                            style: GoogleFonts.dmSans(
                              fontSize: 14.px,
                              color: Kolors.primaryRed,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  Container(
                    height: 35.sp,
                    width: 35.sp,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 8.sp,
                            color: Kolors.primaryRed,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(35)),
                    child: Icon(
                      Icons.share_outlined,
                      color: Colors.black,
                      size: 30.sp,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Sahre now",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.px),
                  )
                ]))));
  }
}
