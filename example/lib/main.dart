import 'package:flutter/material.dart';
import 'package:layerx_generator/layerx_generator.dart';
import 'dart:io';

void main() async {
  // Programmatically generate the LayerX structure
  final generator = LayerXGenerator(Directory.current.path);
  await generator.generate();
  print('LayerX structure generated successfully!');

  // Run the app (after manual generation)
  runApp(const PlaceholderApp());
}

class PlaceholderApp extends StatelessWidget {
  const PlaceholderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Run `dart run layerx_generator --path .` to generate the LayerX structure.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
