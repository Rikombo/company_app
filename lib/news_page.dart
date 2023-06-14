import 'package:company_app/news_page_data.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  NewsPage({super.key});

  final items = NewsPageData(
      title: 'Woman buys out shoes store',
      description:
          'LA year has passed since Greece and what is now called North Macedonia signed a historic deal ending a 27-year dispute between them, in a rare diplomatic success in the Balkans.',
      imageUrl:
          'https://images.thebusinessplanshop.com/2836/open-a-shoe-shop.png');

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text(
            'News',
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.blueGrey,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                width: 24,
              ),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Image.network(items.imageUrl),
              Expanded(
                child: Container(
                  height: size.height,
                  width: size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(8)),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          items.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(8)),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          items.description,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 80,
              width: size.width,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                ),
              ]),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal.1.jpg?h=1f9aeeea&itok=-betxrGH',
                      height: 64,
                      width: 64,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Please write a response...',
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
