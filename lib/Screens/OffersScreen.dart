import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okapp/Screens/SavedOfferScreen.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/KAppBar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const KAppBar(title: "Offers"),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 3.0.h,
                  ),
                  Center(
                    child: Text(
                      "Today\'s Offers",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 3.0.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Text(
                      "You can save offers that you like so they get added to you liked offers which expire in 7 days",
                      style: TextStyle(
                          color: Kolors.primaryGrey,
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  kSizedBox(),
                  GestureDetector(
                    onTap: () {
                      Get.to(const SavedOfferScreen());
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
                              "7 Saved Offers",
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
                  kSizedBox(),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0.sp)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300, blurRadius: 1)
                            ]),
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.0.w, vertical: 2.0.h),
                        margin: EdgeInsets.symmetric(
                            horizontal: 3.0.w, vertical: 1.0.h),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Container(
                                  constraints: BoxConstraints(minHeight: 8.0.h),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/image.png"))),
                                )),
                            Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Title of the offer",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 1.0.h,
                                  ),
                                  Text(
                                    "Short description of the offer in 50 characters",
                                    style: TextStyle(
                                        color: Kolors.primaryGrey,
                                        fontSize: 15.5.sp,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.thumb_up_outlined,
                                            color: Kolors.primaryRed,
                                          )),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.share_outlined,
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  SizedBox kSizedBox() {
    return SizedBox(
      height: 3.0.h,
    );
  }
}
