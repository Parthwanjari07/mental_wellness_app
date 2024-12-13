import 'package:flutter/material.dart';
import 'package:mental_wellness/core/theme.dart';
import 'package:mental_wellness/presentation.onboarding/onboarding/onboarding.dart';
import 'package:mental_wellness/features/meditation/presentation/pages/medatation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Wellness',
      theme: AppTheme.lightTheme,
      home: const MeditationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
