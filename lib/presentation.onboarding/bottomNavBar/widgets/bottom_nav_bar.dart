import 'package:flutter/material.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/bloc/navigation_bloc.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/bloc/navigation_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  const BottomNavBar(
      {super.key, required this.items, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: items,
        currentIndex: currentIndex,
        onTap: (index) {
          context.read<NavigationBloc>()..add(NavigateTo(index: index));
        });
  }
}