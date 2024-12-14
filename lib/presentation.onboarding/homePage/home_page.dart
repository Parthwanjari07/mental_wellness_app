import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/bloc/navigation_bloc.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/bloc/navigation_event.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/bloc/navigation_state.dart';
import 'package:mental_wellness/presentation.onboarding/bottomNavBar/widgets/bottom_nav_bar.dart';


class HomeScreen extends StatelessWidget {
  final List<Widget> pages =[
    Scaffold(body: Center(child: Text("test 1", style: TextStyle(color: Colors.red),),),),
    Scaffold(body: Center(child: Text("test 2", style: TextStyle(color: Colors.green),),),),

  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> bottomNavItems =[
      BottomNavigationBarItem(icon: Image.asset('assets/menu_home.png')),
      BottomNavigationBarItem(icon: Image.asset('assets/menu_songs.png')),

    ];
    return Scaffold(
      body:BlocBuilder<NavigationBloc, NavigationState>(
        builder:(context, state){
          debugPrint('State : $state');
          if(state is NavigationChanged){
            return pages[state.index];
          }
          return pages[0];
        }
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state){
          int currentIndex = 0;
          if(state is NavigationChanged){
            currentIndex = state.index;
          }
          return BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: currentIndex,
          );
        } 
      ),
    );
  }
}
