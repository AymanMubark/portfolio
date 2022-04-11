import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.workSansTextTheme().copyWith(
          headline1: GoogleFonts.workSansTextTheme().headline1!.copyWith(
                color: Colors.black,
              ),
          headline2: GoogleFonts.workSansTextTheme().headline2!.copyWith(
                color: Colors.black,
              ),
          headline3: GoogleFonts.workSansTextTheme().headline4!.copyWith(
                color: Colors.black,
              ),
          headline4: GoogleFonts.workSansTextTheme().headline4!.copyWith(
                color: Colors.black,
              ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // builder: (context, widget) => ResponsiveWrapper.builder(
      //   ClampingScrollWrapper.builder(context, widget!),
      //   defaultScale: true,
      // ),
      home: HomePage(),
    );
  }
}
