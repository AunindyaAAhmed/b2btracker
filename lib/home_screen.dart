// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:b2btrack/custom_widgets/custom_appbar.dart';
import 'package:b2btrack/custom_widgets/custom_gridview.dart';
import 'package:b2btrack/custom_widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 16, 33, 61),
        title: CustomAppbar(),
      ),
      body: Container(
        color: const Color.fromARGB(255, 110, 114, 114).withOpacity(0.3),
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select the list of B2B Points: ",
              style: GoogleFonts.arsenal(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              color: Colors.blue.withOpacity(0.5),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Name',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Legacy Code',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            CustomGridview(),
            SizedBox(
              height: 30,
            ),
            // Need to work on the UI
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4,
                backgroundColor: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Add Destination",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Fluttertoast.showToast(msg: "Destination Removed");
                },
                child: Text(
                  "Remove Destination",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16.0),
                  backgroundColor: const Color.fromARGB(255, 183, 247, 255),
                  elevation: 6,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      height: 35,
                      width: 40,
                      "assets/icons/tanker.png",
                    ),
                    Image.asset(
                      height: 25,
                      width: 25,
                      "assets/icons/fast_forward.png",
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: Image.asset(
                        height: 25,
                        width: 25,
                        "assets/icons/fast_forward.png",
                      ),
                    ),
                    Opacity(
                      opacity: 0.6,
                      child: Image.asset(
                        height: 25,
                        width: 25,
                        "assets/icons/fast_forward.png",
                      ),
                    ),
                    Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        height: 25,
                        width: 25,
                        "assets/icons/fast_forward.png",
                      ),
                    ),
                    Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                        height: 25,
                        width: 25,
                        "assets/icons/fast_forward.png",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 40,
        color: const Color.fromARGB(255, 153, 22, 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              "Aunindya Arif Ahmed, OPL",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Text(
              "2024",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
