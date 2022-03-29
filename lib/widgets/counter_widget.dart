import 'package:flutter/material.dart';
import '../constants/typography.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key? key,
    required this.number,
    required this.color,
    required this.title,
  }) : super(key: key);

  final int number;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '$number',
          style: TextStyle(
            fontSize: 40,
            color: color,
          ),
        ),
        Text(
          '$title',
          style: subtitleTextStyle,
        ),
      ],
    );
  }
}
