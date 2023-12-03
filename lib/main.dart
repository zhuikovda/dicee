import 'package:dicee/dicee_page.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    const DiceeApp(),
  );
}

class DiceeApp extends StatelessWidget {
  const DiceeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dicee'),
          backgroundColor: Colors.indigo,
        ),
        body: DicePage(),
      ),
    );
  }
}
