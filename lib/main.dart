import 'package:flutter/material.dart';
import 'app_parts/background.dart';
import 'app_parts/content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CardHomePage(),
        ),
      ),
    );
  }
}

class CardHomePage extends StatelessWidget {
  const CardHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        BackgroundStack(),
        CardContent(),
      ],
    );
  }
}
