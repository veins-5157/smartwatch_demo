import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:smartwatch_connect/src/ui/pages/home/home.dart';
import 'package:smartwatch_connect/src/ui/pages/home/home_page.dart';

void main() {
  /*WidgetsFlutterBinding.ensureInitialized();

  await FireBase.initializeApp();

  await Permission.activityRecognition.request();
  await Permission.location.request();*/

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
