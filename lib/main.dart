import 'package:easy_animation_wrapper/easy_animation_wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExampleApp(),
    );
  }
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SlideVerticalAnimation(
        child: Text('Slide Vertical Animation'),
      ),
    );
  }
}
