import 'package:flutter/material.dart';
import 'package:food_recipe/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class Kheer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Kheer'),
            subtitle: Text(
                'Kheer is a sweet dish and a type of wet pudding popular in the Indian subcontinent, usually made by boiling milk, sugar or jaggery, and rice, although rice may be substituted with one of the following: daals, bulgur wheat, or sweet corn.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(width: 8),
              TextButton(
                child: const Text(
                  'Click for more',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kheerpage()));
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}

class Kheerpage extends StatelessWidget {
  @override
  String url =
      'https://recipes.timesofindia.com/recipes/annam-parvanam/rice-kheer/rs60101995.cms';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Golden Temple'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/Kheer.jpeg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                  /*1*/
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /*2*/
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'Kheer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*3*/
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                const Text('61'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: Text(
                'Kheer was a part of the ancient Indian diet and is mentioned in the Ayurveda. According to the food historian K T Achaya, kheer or payas, as it known in southern India, was a popular dish in ancient India. First mentioned in ancient Indian literature, it was a mixture of rice, milk and sugar, a formula that has endured for over two thousand years. Payas was also a staple Hindu temple food, in particular, and it is served as Prasāda to devotees.'),
          ),
          ElevatedButton(
            onPressed: () {
              launch(url);
            },
            child: Text('Click for more information'),
          ),
          Reviewscard(),
        ]));
  }
}
