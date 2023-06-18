import 'package:company_app/bottom_bar.dart';
import 'package:company_app/description_info.dart';
import 'package:company_app/title_bar.dart';
import 'package:company_app/vote_button_bar.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 300),
            child: Image.network(
              'https://www.signupgenius.com/cms/images/business/planning-business-events-article-600x400.jpg',
              fit: BoxFit.cover,
              width: size.width,
              height: size.height,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 450,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: Column(
                  children: [
                    TitleBar(),
                    DescriptionInfo(),
                    VoteButtonBar(),
                    SizedBox(
                      height: 40,
                    ),
                    BottomBar(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
