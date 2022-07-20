import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okapp/Screens/MainPage.dart';
import 'package:okapp/Screens/reportEvent.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
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
