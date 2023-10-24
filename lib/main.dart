import 'package:flutter/material.dart';
import 'package:rishabh_profile/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const HomePage(),
    },
  ));
}
