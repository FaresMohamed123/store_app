// ignore_for_file: deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constant.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    supportedLocales:const <Locale>[
    Locale('ar', 'AE'), // English
    Locale('ar', 'AE'), // Hebrew
 
  ],

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,  
      ),
      home: const HomeScreen(),
    );
  }
}
