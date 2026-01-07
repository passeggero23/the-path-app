import 'package:flutter/material.dart';

void main() => runApp(NudgLearningApp());

class NudgLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NudgLearning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Text('NudgLearning - The Path'),
          backgroundColor: Colors.indigo,
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            _buildModulo(context, 'Deep', Icons.psychology),
            _buildModulo(context, 'Human Capital', Icons.auto_graph),
            _buildModulo(context, 'Risk Bank', Icons.account_balance),
            _buildModulo(context, 'P. Administration', Icons.account_balance_wallet),
          ],
        ),
      ),
    );
  }

  Widget _buildModulo(BuildContext context, String titolo, IconData icona) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icona, color: Colors.indigo, size: 30),
        title: Text(titolo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
