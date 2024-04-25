
import 'package:flutter/material.dart';

import '../../../models/BloodGlucose.dart';

class MyCard extends StatelessWidget {
  final BloodGlucose bloodGlucose;

  const MyCard({super.key, required this.bloodGlucose});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(bloodGlucose.value.toStringAsFixed(2),
              style: const TextStyle(fontSize: 24)),
          Text(bloodGlucose.unit),
          Text(bloodGlucose.dateFrom.toString()),
        ],
      ),
    );
  }
}
