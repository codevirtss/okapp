import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/PrimaryButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

NAlertDialog showKDialog(
    BuildContext context, String title, Function confirmCallBack) {
  return NAlertDialog(
    blur: 10,
    dialogStyle: DialogStyle(titleDivider: false),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 3.0.h,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.0.sp,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0.h,
        ),
      ],
    ),
    content: Row(
      children: <Widget>[
        Expanded(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  elevation: 1,
                  padding:
                      EdgeInsets.symmetric(horizontal: 6.0.w, vertical: 2.h),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Kolors.primaryRed),
                      borderRadius: BorderRadius.all(Radius.circular(3.2.w)))),
              child: Text(
                "Cancel",
                style: TextStyle(
                    color: Kolors.primaryRed,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0.sp),
              )),
        ),
        SizedBox(
          width: 3.0.w,
        ),
        Expanded(
          child: PrimaryButton(
              isIcon: false,
              onPressed: () {
                confirmCallBack();
              },
              title: "Confirm"),
        ),
      ],
    ),
  );
}
