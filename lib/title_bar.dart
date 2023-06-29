import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: Text(
            'Montly Retrospective',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              const Text(
                '15/06',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.center,
                height: 32,
                width: 64,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: const Text(
                  '17:30',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
