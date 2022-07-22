import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okapp/Screens/AboutScreen.dart';
import 'package:okapp/Screens/GetStartedScreen.dart';
import 'package:okapp/Screens/MainPage.dart';
import 'package:okapp/Screens/OffersScreen.dart';
import 'package:okapp/Screens/SavedOfferScreen.dart';
import 'package:okapp/Screens/Spalsh1.dart';
import 'package:okapp/Screens/SplashScreen.dart';
import 'package:okapp/Screens/VerifyNumberScreen.dart';
import 'package:okapp/Screens/reportCaller.dart';
import 'package:okapp/Screens/reportEvent.dart';
import 'package:okapp/Screens/reportMsg.dart';
import 'package:okapp/Screens/shareTheApp.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'Screens/callDrop.dart';
import 'Screens/downloadPdf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
          theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),
          debugShowCheckedModeBanner: false,
          title: 'Ok App',
          home: const MainPage());
    });
  }
}
