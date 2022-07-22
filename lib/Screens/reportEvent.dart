import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okapp/Screens/reportCaller.dart';
import 'package:okapp/Screens/reportMsg.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/DashRect.dart';
import 'package:okapp/Utils/KAppBar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReportEventScreen extends StatefulWidget {
  const ReportEventScreen({Key? key}) : super(key: key);

  @override
  State<ReportEventScreen> createState() => _ReportEventScreenState();
}

class _ReportEventScreenState extends State<ReportEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            height: 100.h,
            width: 100.w,
            child: Column(
              children: [
                const KAppBar(title: "Report Event"),
                SizedBox(
                  height: 18.0.h,
                ),
                Text(
                  "Scan a QR Code",
                  style: GoogleFonts.dmSans(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.px),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "This is the preferred event reporting\n                         option.",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.px,
                      color: Kolors.primaryGrey),
                ),
                SizedBox(height: 35),
                InkWell(
                  onTap: () {
                    Get.to(ReportCaller());
                  },
                  child: DottedBorder(
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
                            "Scan Now",
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
                ),
                SizedBox(
                  height: 68,
                ),
                Container(
                  height: 70.px,
                  width: 320.px,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      border: Border.all(color: Kolors.primaryGrey),
                      borderRadius: BorderRadius.circular(10.px)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      Icon(
                        Icons.image_outlined,
                        color: Colors.black,
                        size: 30.px,
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      Text(
                        "Report using Vehicle Number",
                        style: GoogleFonts.dmSans(
                          fontSize: 12.px,
                          color: Kolors.primaryRed,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 70.px,
                  width: 320.px,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      border: Border.all(color: Kolors.primaryGrey),
                      borderRadius: BorderRadius.circular(10.px)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReportCaller()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Icon(
                          Icons.image_outlined,
                          color: Colors.black,
                          size: 30.px,
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        Text(
                          "Report a caller",
                          style: GoogleFonts.dmSans(
                            fontSize: 12.px,
                            color: Kolors.primaryRed,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 70.px,
                  width: 320.px,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      border: Border.all(color: Kolors.primaryGrey),
                      borderRadius: BorderRadius.circular(10.px)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ReportMsg()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Icon(
                          Icons.image_outlined,
                          color: Colors.black,
                          size: 30.px,
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        Text(
                          "Report a message",
                          style: GoogleFonts.dmSans(
                            fontSize: 12.px,
                            color: Kolors.primaryRed,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
