import 'package:flutter/material.dart';

class FeelingButton extends StatelessWidget {
  final String label;
  final String image;
  final Color color;
  const FeelingButton(
      {super.key,
      required this.label,
      required this.image,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Image.asset(
            image,
            height: 40,
          ),
        ),
        Text(label, style: Theme.of(context).textTheme.labelSmall)
      ],
    );
  }
}