// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'thinees_theme.dart';
import 'home.dart';

void main() {
  runApp(const ThineesRecipes());
}

class ThineesRecipes extends StatelessWidget {
  const ThineesRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThineesTheme.dark();

    // home widget
    return MaterialApp(
      theme: theme,
      title: 'Thinees Kitchen',
      home: const Home(),
    );
  }
}
