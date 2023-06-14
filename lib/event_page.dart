import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          flex: 2,
                          child: Text(
                            'Montly Retrospective',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 32),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                '15/06',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
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
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "As always, we are going to take a look back at events that took place and discuss our plans for the next month.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Delicious pizza and board games await everyone at the end of the event.",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(2, 4),
                            )
                          ]),
                      width: 400,
                      height: 70,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 16, left: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Are you going?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  '14 are going',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 32),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.greenAccent,
                            ),
                            height: 35,
                            width: 80,
                            child: const Text(
                              'Yes',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.grey, width: 2)),
                            height: 35,
                            width: 80,
                            child: const Text(
                              'No',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const SizedBox(width: 16)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: Row(
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
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
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 16),
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
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
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
