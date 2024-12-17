import 'package:flutter/material.dart';
import 'package:mental_wellness/features/meditation/presentation/widgets/feeling_button.dart';
import 'package:mental_wellness/core/theme.dart';
import 'package:mental_wellness/features/meditation/presentation/widgets/task_card.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text('Meditation'),
          backgroundColor: DefaultColors.white,
          leading: Image.asset('assets/menu_burger.png'),
          // elevation: 4,
          actions: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        backgroundColor: DefaultColors.white,
        body: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Welcome back, user!',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'How are you feeling today ?',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FeelingButton(
                      label: 'Happy',
                      image: 'assets/happy.png',
                      color: DefaultColors.pink,
                    ),
                    FeelingButton(
                      label: 'Calm',
                      image: 'assets/calm.png',
                      color: DefaultColors.lightteal,
                    ),
                    FeelingButton(
                      label: 'Relax',
                      image: 'assets/relax.png',
                      color: DefaultColors.orange,
                    ),
                    FeelingButton(
                      label: 'Focus',
                      image: 'assets/focus.png',
                      color: DefaultColors.purple,
                    ),
                  ],
                ),
                
                SizedBox(
                  height: 15,
                ),
                
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Today\'s Task',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TaskCard(
                    title: 'Morning',
                    description:
                        "lets open up top the things that matter to the people",
                    color: DefaultColors.task1),
                const SizedBox(
                  height: 16,
                ),
                TaskCard(
                    title: 'Noon',
                    description:
                        "Take a moment to reflect on your day so far. Consider what has gone well and what could be improved. Use this time to reset and refocus for the rest of the day.",
                    color: DefaultColors.task2),
                const SizedBox(
                  height: 16,
                ),
                TaskCard(
                    title: 'Evening',
                    description:
                        "Prepare for a restful night ahead. Engage in activities that help you unwind and de-stress. This could include light reading, meditation, or a warm bath.",
                    color: DefaultColors.task3),
                const SizedBox(
                  height: 16,
                ),
                TaskCard(
                    title: 'Night',
                    description:
                        "Wind down and relax before sleep. Create a calming bedtime routine that signals to your body that it's time to rest. Avoid screens and opt for soothing activities instead.",
                    color: DefaultColors.task1),
              ],
            ),
          ),
        ));
  }
}
