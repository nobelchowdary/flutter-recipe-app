import 'package:flutter/material.dart';
import 'package:food_recipe/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class Rasagulla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Rasagulla'),
            subtitle: Text(
                'Rasgulla or Rosogolla or Rasagola is a South Asian syrupy dessert popular in the Indian subcontinent and regions with South Asian diaspora. It is made from ball-shaped dumplings of chhena (an Indian cottage cheese) and semolina dough, cooked in light syrup made of sugar. This is done until the syrup permeates the dumplings.'),
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
                      MaterialPageRoute(builder: (context) => Rasagullapage()));
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

class Rasagullapage extends StatelessWidget {
  @override
  String url =
      'https://recipes.timesofindia.com/recipes/rasgulla/rs52743612.cms';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Taj Mahal'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/Rasagulla.jpeg',
            width: 600,
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
                          'Rasagulla',
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
                'The spongy white rasgulla is believed to have been introduced in present-day West Bengal in 1868 by a Kolkata-based confectioner named Nobin Chandra Das. Das started making rasgulla by processing the mixture of chhena and semolina in boiling sugar syrup in contrast to the mixture sans semolina in the original rasgulla in his sweet shop located at Sutanuti (present-day Baghbazar). His descendants claim that his recipe was an original, but according to another theory, he modified the traditional Odisha rasgulla recipe to produce this less perishable variant.'),
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
