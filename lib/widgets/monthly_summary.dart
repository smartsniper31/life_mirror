import 'package:flutter/material.dart';

class MonthlySummary extends StatelessWidget {
  final String month;
  final List<String> highlights;
  final Map<String, int> moodStats;
  final List<String> suggestions;
  final String quote;

  const MonthlySummary({
    super.key,
    required this.month,
    required this.highlights,
    required this.moodStats,
    required this.suggestions,
    required this.quote,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bilan du mois de $month')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Points forts', style: Theme.of(context).textTheme.headlineSmall),
            ...highlights.map((e) => ListTile(leading: Icon(Icons.star), title: Text(e))),
            Divider(),
            Text('Émotions les plus fréquentes', style: Theme.of(context).textTheme.headlineSmall),
            ...moodStats.entries.map((e) => ListTile(
                  leading: Icon(Icons.emoji_emotions),
                  title: Text('${e.key} : ${e.value} jours'),
                )),
            Divider(),
            Text('Suggestions personnalisées', style: Theme.of(context).textTheme.headlineSmall),
            ...suggestions.map((e) => ListTile(leading: Icon(Icons.tips_and_updates), title: Text(e))),
            Divider(),
            Text('Citation du mois', style: Theme.of(context).textTheme.headlineSmall),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('"$quote"', style: TextStyle(fontStyle: FontStyle.italic)),
            ),
          ],
        ),
      ),
    );
  }
}