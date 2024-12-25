import 'package:flutter/material.dart';
import 'package:mental_wellness/core/theme.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:mental_wellness/features/music/presentation/pages/playlist_screen.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text('Meditation'),
          backgroundColor: DefaultColors.white,
          leading: GestureDetector(
            child: Image.asset('assets/down_arrow.png'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // elevation: 4,
          actions: [
            Image.asset('assets/transcript_icon.png'),
            SizedBox(
              width: 10,
            )
          ],
        ),
        backgroundColor: DefaultColors.white,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // artwork
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  "assets/child_with_dog.png",
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 16),
              Text(
                'Rain On Glass',
                style: Theme.of(context).textTheme.labelLarge,
              ),

              Text(
                'By : Painting with Passion',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Spacer(flex: 20),
              ProgressBar(
                progress: Duration(milliseconds: 1000),
                total: Duration(minutes: 5000),
                thumbColor: DefaultColors.pink,
                baseBarColor: DefaultColors.lightpink,
                onSeek: (duration) {
                  print("user selected a new time : $duration");
                },
              ),

              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shuffle, color: DefaultColors.pink),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_previous, color: DefaultColors.pink),
                  ),
                  IconButton(
                    iconSize: 80,
                    onPressed: () {},
                    icon: Icon(Icons.pause_circle_filled,
                        color: DefaultColors.pink),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_next, color: DefaultColors.pink),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.repeat, color: DefaultColors.pink),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
