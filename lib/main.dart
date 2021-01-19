import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tornaument/pages/iniciarSesion/inicio_sesion_binding.dart';
import 'package:tornaument/pages/iniciarSesion/inicio_sesion_screen.dart';
import 'package:tornaument/pages/main/main_binding.dart';
import 'package:tornaument/pages/main/main_screen.dart';
import 'package:tornaument/routes/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tornaument',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: GoogleFonts.notoSans(
            color: Colors.black87,
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
          headline2: GoogleFonts.notoSans(
            color: Colors.black87,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          headline3: GoogleFonts.notoSans(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          headline4: GoogleFonts.notoSans(
            color: Colors.black87,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          headline5: GoogleFonts.notoSans(
            color: Colors.white,
            fontSize: 25,
          ),
          headline6: GoogleFonts.notoSans(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: GoogleFonts.notoSans(
            color: Colors.white,
            fontSize: 16,
          ),
          bodyText2: GoogleFonts.notoSans(
            color: Colors.black87,
            fontSize: 16,
          ),
        ),
      ),
      initialBinding: MainBinging(),
      home: MainScreen(),
      getPages: AppPages.pages,
    );
  }
}
