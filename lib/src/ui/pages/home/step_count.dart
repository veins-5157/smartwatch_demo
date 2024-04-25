import 'package:flutter/material.dart';
import '../../../infra/health_repository.dart';
import 'home_controller.dart';

class StepCount extends StatefulWidget {
  @override
  _StepCountState createState() => _StepCountState();
}

class _StepCountState extends State<StepCount> {
  final controller = HealthRepository();
  late Future<int> _stepCountFuture=Future.value(0);  // Changed to late initialization

  @override
  void initState() {
    super.initState();
    _refreshStepCount(); // Call to fetch step count on initial load
  }

  // Method to refresh the step count
  Future<void> _refreshStepCount() async {
    setState(() {
      _stepCountFuture = controller.getSteps(); // Assigning the future
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Step count')),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _refreshStepCount, // Refresh step count on button press
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: FutureBuilder<int>(
        future: _stepCountFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Center(child: Text("Step Count: ${snapshot.data}"));
          }
        },
      ),
    );
  }
}