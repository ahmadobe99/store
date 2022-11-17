import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/components/constans.dart';

class Store_Type extends StatefulWidget {
  const Store_Type({super.key});

  @override
  State<Store_Type> createState() => _Store_TypeState();
}

class _Store_TypeState extends State<Store_Type> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      
    );
  }

  AppBar homeAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(
        "Welcome to electronically store",
        style: GoogleFonts.getFont("Roboto",
            fontWeight: FontWeight.bold, fontSize: 20),
      ),
      centerTitle: false,
      actions: [IconButton(onPressed: (() {}), icon: Icon(Icons.menu))],
    );
  }
}
