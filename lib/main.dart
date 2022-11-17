import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/components/constans.dart';
import 'package:store/screens/HomePage.dart';
import 'package:store/screens/details_screen.dart';
import 'package:store/screens/store_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        DetailsScreen.screenRoute: (context) => DetailsScreen(),
      },
      home: HomeScreen(),
      title: "Electrecal Store",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryColor: kPrimaryColor,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor),
      ),
    );
  }
}
