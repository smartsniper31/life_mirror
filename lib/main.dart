import 'package:flutter/material.dart';
import 'widgets/monthly_summary.dart';

void main() {
  runApp(const LifeMirrorApp());
}

class LifeMirrorApp extends StatelessWidget {
  const LifeMirrorApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life Mirror',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Life Mirror')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => MonthlySummary(
                month: "Septembre",
                highlights: [
                  "Nouvelle habitude : méditation 15 jours",
                  "Humeur positive (60% des jours)",
                ],
                moodStats: {
                  "Heureux": 12,
                  "Motivé": 8,
                  "Fatigué": 5,
                },
                suggestions: [
                  "Continue la méditation chaque matin",
                  "Essaye de te coucher plus tôt 2 fois/semaine",
                ],
                quote: "Le plus grand voyage commence par un pas.",
              ),
            ));
          },
          child: const Text("Voir mon bilan du mois"),
        ),
      ),
    );
  }
}