import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_wellness/features/music/presentation/pages/music_player_screen.dart';
import 'package:mental_wellness/features/music/presentation/pages/playlist_screen.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/bloc/navigation_bloc.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/bloc/navigation_event.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/bloc/navigation_state.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/widgets/bottom_nav_bar.dart';
import 'package:mental_wellness/features/meditation/presentation/pages/medatation_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> pages = [const MeditationScreen(), PlaylistScreen()];

  HomeScreen({super.key});

  BottomNavigationBarItem createBottomNavItem(
      String assetName, bool isActive, BuildContext context) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        assetName,
        height: 45,
        color: isActive
            ? Theme.of(context).focusColor
            : Theme.of(context).primaryColor,
      ),
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
        debugPrint('State : $state');
        if (state is NavigationChanged) {
          return pages[state.index];
        }
        return const Center(child: CircularProgressIndicator());
      }),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
        int currentIndex = 0;
        if (state is NavigationChanged) {
          currentIndex = state.index;
        }

        final List<BottomNavigationBarItem> bottomNavItems = [
          createBottomNavItem(
              'assets/menu_home.png', currentIndex == 0, context),
          createBottomNavItem(
              'assets/menu_songs.png', currentIndex == 1, context),
        ];

        return BottomNavBar(
          items: bottomNavItems,
          currentIndex: currentIndex,
        );
      }),
    );
  }
}
