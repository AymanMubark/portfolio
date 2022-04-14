import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blocs/app_bloc.dart';
import 'pages/home/home_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AppBloc()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: "Ayman Ahmed",
      themeMode: context.watch<AppBloc>().themeMode,
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: GoogleFonts.workSansTextTheme().copyWith(
          headline1: GoogleFonts.workSansTextTheme().headline1!.copyWith(
                color: Colors.white,
              ),
          headline2: GoogleFonts.workSansTextTheme().headline2!.copyWith(
                color: Colors.white,
              ),
          headline3: GoogleFonts.workSansTextTheme().headline4!.copyWith(
                color: Colors.white,
              ),
          headline4: GoogleFonts.workSansTextTheme().headline4!.copyWith(
                color: Colors.white,
              ),
          headline5: GoogleFonts.workSansTextTheme().headline4!.copyWith(
                color: Colors.white,
              ),
          headline6: GoogleFonts.workSansTextTheme().headline4!.copyWith(
                color: Colors.white,
              ),
        ),
        brightness: Brightness.dark,
        dividerColor: Colors.grey.shade100,
      ),
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
          headline5: GoogleFonts.workSansTextTheme().headline4!.copyWith(
                color: Colors.black,
              ),
          headline6: GoogleFonts.workSansTextTheme().headline4!.copyWith(
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
