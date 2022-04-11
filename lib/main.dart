import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_app/pages/home_page,dart.dart';
import 'package:p_app/utils/routes.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: const Color(0xFFFF6366),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      //home: LoginPage(),
      initialRoute: "/",
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
