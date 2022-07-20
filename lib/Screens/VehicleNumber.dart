import 'package:flutter/material.dart';
import 'package:okapp/Utils/Colors.dart';
import 'package:okapp/Utils/KAppBar.dart';
import 'package:okapp/Utils/PrimaryButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VehicleNumber extends StatefulWidget {
  const VehicleNumber({Key? key}) : super(key: key);

  @override
  State<VehicleNumber> createState() => _VehicleNumberState();
}

class _VehicleNumberState extends State<VehicleNumber> {
  bool _vehcileFound = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.backgroundColor,
      body: _vehcileFound
          ? Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top + 1.0.h,
                ),
                const KAppBar(title: "Vehicle Number"),
                SizedBox(
                  height: 20.0.h,
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
                  height: 5.0.h,
                ),
                Text(
                  "Matching Vehicle Found",
                  style: TextStyle(
                      color: Kolors.primaryGrey,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Text(
                  "Expect a call soon\n Please keep your phone handy",
                  style: TextStyle(
                      color: Kolors.primaryGrey,
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                PrimaryButton(
                  isIcon: true,
                  onPressed: () {
                    setState(() {
                      _vehcileFound = false;
                    });
                  },
                  title: "Connect",
                  icon: Icons.call_end_outlined,
                )
              ],
            )
          : Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top + 1.0.h,
                ),
                const KAppBar(title: "Vehicle Number"),
                SizedBox(
                  height: 20.0.h,
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
                SizedBox(
                  height: 5.0.h,
                ),
                Text(
                  "No Match Found",
                  style: TextStyle(
                      color: Kolors.primaryGrey,
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                PrimaryButton(
                  isIcon: false,
                  onPressed: () {
                    setState(() {
                      _vehcileFound = true;
                    });
                  },
                  title: "Try Again",
                )
              ],
            ),
    );
  }
}
