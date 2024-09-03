// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Text(
          "B2B Distribution Tracker",
          style: GoogleFonts.foldit(fontSize: 16, color: Colors.white),
        ),
        Container(
          height: 30,
          width: 30,
          child: Image.asset(
            "assets/icons/appbar_logo.png",
          ),
        )
      ],
    );
  }
}
