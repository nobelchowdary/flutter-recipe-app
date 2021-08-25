import 'package:flutter/material.dart';
import 'package:food_recipe/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class Jalebi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Jalebi'),
            subtitle: Text(
                'Jalebi is the national sweet of India and you will find this sweet in every corner of India and the taste of the Jalebis of this shop is wonderful and you will like to visit it for other reasons like the liveliness of the place and the activities taking place nearby it.'),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GulabJamunpage()));
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

class GulabJamunpage extends StatelessWidget {
  @override
  String url = 'https://recipes.timesofindia.com/recipes/jalebi/rs53099699.cms';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Jalebi'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/Jalebi.jpeg',
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
                          'Jalebi',
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
                'The word "gulab" is derived from the Persian words gol (flower) and āb (water), referring to the rose water-scented syrup. "Jamun" or "jaman" is the Hindi word for Syzygium jambolanum, an Indian fruit with a similar size and shape, commonly known as black plum.[5] Jamun is also defined as a fried delicacy in sugar syrup.[6] The Arab dessert luqmat al-qadi is similar to gulab jamun, although it uses a different batter. According to the culinary historian Michael Krondl, both luqmat al-qadi and gulab jamun may have derived from a Persian dish, with rose water syrup being a common connection between the two.'),
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
