import 'package:flutter/material.dart';

class DescriptionInfo extends StatelessWidget {
  const DescriptionInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            "As always, we are going to take a look back at events that took place and discuss our plans for the next month.",
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Delicious pizza and board games await everyone at the end of the event.",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
