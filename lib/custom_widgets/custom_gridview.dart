// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class CustomGridview extends StatefulWidget {
  const CustomGridview({super.key});

  @override
  State<CustomGridview> createState() => _CustomGridviewState();
}

class _CustomGridviewState extends State<CustomGridview> {
  final List<Map<String, String>> data = [
    {'name': 'Aqua Refinery', 'code': '800023'},
    {'name': 'MJL Bangladesh', 'code': '800023'},
    {'name': 'My Fuel Pump Limited', 'code': '800023'},
    {'name': 'Dhaka Boat Club', 'code': '800023'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3,
        ),
        itemCount: data.length * 2, // Multiply by 2 for name and code columns
        itemBuilder: (context, index) {
          final itemIndex = index ~/ 2;
          final isName = index % 2 == 0;
          return Container(
            decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
            ),
            child: Center(
              child: Text(
                isName ? data[itemIndex]['name']! : data[itemIndex]['code']!,
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
