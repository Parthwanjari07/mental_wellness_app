import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  final List<Map<String, String>> songs = [
    {
      'title': 'Rain on Glass',
      'artist': 'Rain on Glass',
      'thumbnail': 'assets/child_with_dog.png'
    },
    {
      'title': 'Gentle Breeze',
      'artist': 'Soothing Sounds',
      'thumbnail': 'assets/child_with_dog.png'
    },
    {
      'title': 'Whispering Pines',
      'artist': 'Nature Vibes',
      'thumbnail': 'assets/child_with_dog.png'
    },
    {
      'title': 'Ocean Waves Breeze',
      'artist': 'Soothing Sounds',
      'thumbnail': 'assets/child_with_dog.png'
    }
  ];

  PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
