import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: "Ayman Ahmed",
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
      home: const HomePage(),
    );
  }
}
