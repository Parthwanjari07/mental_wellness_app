import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:mental_wellness/core/theme.dart';
import 'package:mental_wellness/presentation.onboarding/homePage/home_page.dart';
import 'package:mental_wellness/presentation.onboarding/onboarding/onboarding.dart';
import 'package:mental_wellness/features/meditation/presentation/pages/medatation_screen.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/bloc/navigation_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: MaterialApp(
        title: 'Mental Wellness',
        theme: AppTheme.lightTheme,
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
