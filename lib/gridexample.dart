// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class GridViewTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Table'),
      ),
      body: Column(
        children: [
          // Header
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.blue,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Column 1',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Column 2',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          // GridView for table body
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3,
              ),
              itemCount: 8, // 2 columns * 4 rows
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(
                    child:
                        Text('Row ${(index ~/ 2) + 1}, Col ${(index % 2) + 1}'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
