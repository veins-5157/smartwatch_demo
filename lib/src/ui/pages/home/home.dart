
import 'package:flutter/material.dart';
import 'package:smartwatch_connect/src/ui/pages/home/step_count.dart';

import '../../../models/BloodGlucose.dart';
import '../widgets/my_card.dart';
import 'home_controller.dart';
import 'home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Health Kit Demo')),
           body:Column(
             children: [Container(
               padding: EdgeInsets.all(16),
               width: double.infinity,
               child: Column(
                 children: [
                   TextButton(onPressed:(){
                     Navigator.of(context).push(
                       MaterialPageRoute(
                         builder: (context) =>  Blood(),
                       ),
                     );
                   }, child: Text("Blood Glucose")),
                   TextButton(onPressed:(){
                     Navigator.of(context).push(
                       MaterialPageRoute(
                         builder: (context) =>  StepCount(),
                       ),
                     );
                   }, child: Text("Step Count")),
                 ],
               ),
             )],
           )
    );
  }
}
