import 'package:flutter/material.dart';

class ReportingScreen extends StatelessWidget {
  const ReportingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Saisie de Rapport"),
        automaticallyImplyLeading: false, // No back button
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nom du Projet',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Date',
                border: OutlineInputBorder(),
                hintText: 'JJ/MM/AAAA',
              ),
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Description des travaux',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Handle photo attachment
              },
              icon: const Icon(Icons.camera_alt),
              label: const Text('Ajouter des photos'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // TODO: Handle form submission
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Rapport soumis !')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Soumettre le Rapport'),
            ),
          ],
        ),
      ),
    );
  }
}
