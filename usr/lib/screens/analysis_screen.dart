import 'package:flutter/material.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analyse Mensuelle"),
        automaticallyImplyLeading: false, // No back button
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bar_chart, size: 80, color: Colors.blueGrey),
            const SizedBox(height: 20),
            const Text(
              'Page d\'analyse des travaux',
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Les graphiques et les analyses mensuelles des rapports de chantier apparaîtront ici.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
