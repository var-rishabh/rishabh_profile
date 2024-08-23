import 'package:flutter/material.dart';
import './src/app.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Radioactive",
      debugShowCheckedModeBanner: false,
      home: App(),
    ),
  );
}
