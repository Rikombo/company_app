import 'package:company_app/personal_info_data.dart';
import 'package:company_app/personal_info_item.dart';
import 'package:flutter/material.dart';

class PersonalPage extends StatelessWidget {
  PersonalPage({super.key});

  final items = [
    PersonalInfoData(
        title: 'Position',
        value: 'Flutter Developer',
        icon: Icons.work_outline),
    PersonalInfoData(
        title: 'Email',
        value: 'valentins.stepanovs@gmail.com',
        icon: Icons.email_outlined),
    PersonalInfoData(
        title: 'Phone',
        value: '+371 26752786',
        icon: Icons.phone_android_outlined),
    PersonalInfoData(
        title: 'Hobby', value: 'Reading', icon: Icons.book_outlined)
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Valentins Stepanovs',
          style: TextStyle(color: Colors.blueGrey),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/1200px-Cat_November_2010-1a.jpg',
            fit: BoxFit.cover,
            width: size.width,
            height: size.height,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    child: Text(
                      'Valentins Stepanovs',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(child: PersonalInfoItem(data: items[0])),
                      Expanded(
                          child: PersonalInfoItem(
                        data: items[2],
                      ))
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(child: PersonalInfoItem(data: items[1])),
                      Expanded(child: PersonalInfoItem(data: items[3]))
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 20)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
