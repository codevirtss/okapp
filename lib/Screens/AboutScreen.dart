import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/KAppBar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ABoutScreen extends StatefulWidget {
  const ABoutScreen({Key? key}) : super(key: key);

  @override
  State<ABoutScreen> createState() => _ABoutScreenState();
}

class _ABoutScreenState extends State<ABoutScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Kolors.backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 1.0.h,
              ),
              KAppBar(title: "About"),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(15.0.sp)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 1)
                    ]),
                padding:
                    EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 1.5.h),
                margin:
                    EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 1.5.h),
                child: Text(
                  "Partner with us email info@oyekidhar.com",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21.0.sp,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 3.0.h,
              ),
              TabBar(
                  indicatorColor: Colors.transparent,
                  labelColor: Kolors.primaryRed,
                  unselectedLabelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontSize: 18.0.sp, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      text: "About",
                    ),
                    Tab(
                      text: "Products",
                    ),
                    Tab(
                      text: "Contact",
                    )
                  ]),
              Expanded(
                child: TabBarView(children: [
                  kTabs(),
                  kTabs2(),
                  kTabs3(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget kTabs() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.0.w),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                EvaIcons.arrowIosDownward,
                color: Kolors.primaryRed,
              ),
            ],
          ),
          SizedBox(
            height: 3.0.h,
          ),
          SizedBox(
            width: 80.0.w,
            child: Text(
              "No contact information of the user or the emergency contacts are shared with the response teams",
              style: TextStyle(
                  color: Kolors.primaryGrey,
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }

  Widget kTabs2() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                EvaIcons.arrowIosDownward,
                color: Kolors.primaryRed,
              ),
            ],
          ),
          SizedBox(
            height: 3.0.h,
          ),
          SizedBox(
            width: 80.0.w,
            child: Text(
              "No contact information of the user or the emergency contacts are shared with the response teams",
              style: TextStyle(
                  color: Kolors.primaryGrey,
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }

  Widget kTabs3() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                EvaIcons.arrowIosDownward,
                color: Kolors.primaryRed,
              ),
            ],
          ),
          SizedBox(
            height: 3.0.h,
          ),
          SizedBox(
            width: 80.0.w,
            child: Text(
              "No contact information of the user or the emergency contacts are shared with the response teams",
              style: TextStyle(
                  color: Kolors.primaryGrey,
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
