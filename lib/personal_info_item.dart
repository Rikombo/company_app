import 'package:company_app/Personal_info_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalInfoItem extends StatelessWidget {
  const PersonalInfoItem({super.key, required this.data});

  final PersonalInfoData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(data.icon, size: 20, color: Colors.blueGrey),
            const SizedBox(
              width: 8,
            ),
            Text(
              data.title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
          ],
        ),
        const SizedBox(height: 8,),
        Text(data.value, style: const TextStyle(
          fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}
