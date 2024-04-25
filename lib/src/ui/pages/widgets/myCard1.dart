//
// import 'package:flutter/material.dart';
// import 'package:smartwatch_connect/src/models/StepCount.dart';
//
// import '../../../models/BloodGlucose.dart';
// class myCard1 extends StatelessWidget {
//   final StepCount stepCount;
//   const myCard1({super.key, required this.stepCount});
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(stepCount.value.toStringAsFixed(2),
//               style: const TextStyle(fontSize: 24)),
//           Text(stepCount.unit),
//           Text(stepCount.dateFrom.toString()),
//         ],
//       ),
//     );
//   }
// }