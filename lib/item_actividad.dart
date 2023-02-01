import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  ItemActividad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            color: Colors.purple,
          ),
          Text("Day 1", style: TextStyle(fontSize: 11)),
          Text("Bali mountains"),
        ],
      ),
    );
  }
}
