import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://www.thesprucepets.com/thmb/5OSN_p9hUfPssKsJORQDGnAz_tQ=/1963x0/filters:no_upscale():strip_icc()/GettyImages-181861505-4e63227ed0a14dc9bfe86848ef54caf3.jpg'),
          radius: 28,
        ),
        SizedBox(
          width: 24,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Valentins Stepanovs',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text('2 hours ago'),
          ],
        ),
        SizedBox(
          width: 24,
        ),
        Icon(Icons.chat),
        SizedBox(
          width: 8,
        ),
        Text(
          '0',
          style: TextStyle(color: Colors.blueGrey, fontSize: 16),
        ),
        SizedBox(
          width: 24,
        ),
        Icon(
          Icons.favorite,
          color: Colors.pinkAccent,
          size: 26,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '3',
          style: TextStyle(color: Colors.blueGrey, fontSize: 16),
        ),
      ],
    );
  }
}
