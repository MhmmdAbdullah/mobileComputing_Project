import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/splash/presentation/screens/splash_screen.dart';

void main() {
  runApp(const TreeveApp());
}

class TreeveApp extends StatelessWidget {
  const TreeveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Treeve',

      theme: AppTheme.lightTheme,

      home: const SplashScreen(),
    );
  }
}