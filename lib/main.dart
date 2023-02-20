// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'thinees_theme.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

void main() {
  runApp(const ThineesRecipes());
}

class ThineesRecipes extends StatelessWidget {
  const ThineesRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThineesTheme.light();

    // home widget
    return MaterialApp(
      theme: theme,
      title: 'Thinees Kitchen',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
