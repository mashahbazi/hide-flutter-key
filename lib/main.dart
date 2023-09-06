import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildInfoRow(
              'secret1',
              const String.fromEnvironment('secret1', defaultValue: ''),
            ),
            _buildInfoRow(
              'secret2',
              const String.fromEnvironment('secret2', defaultValue: ''),
            ),
            _buildInfoRow(
              'secret3',
              const String.fromEnvironment('secret3', defaultValue: ''),
            ),
          ],
        ),
      ),
    );
  }

  _buildInfoRow(String key, String value) {
    return Text("${key.toUpperCase()}: $value");
  }
}
