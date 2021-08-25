import 'package:flutter/material.dart';
import 'package:food_recipe/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class Halwa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Gajar ka Halwa'),
            subtitle: Text(
                'Warm your winter with this recipe that is sure to delight even the pickiest of dessert eaters! Halwa made Pakistani style with grated carrot, condensed milk, nuts and golden varq.'),
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
                      MaterialPageRoute(builder: (context) => Halwapage()));
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

class Halwapage extends StatelessWidget {
  @override
  String url =
      'https://recipes.timesofindia.com/recipes/gajar-ka-halwa/rs53317590.cms';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Gajar ka Halwa'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/Halwa.jpg',
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
                          'Gajar ka Halwa',
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
                'The gajar ka halwa was first introduced during the Mughal period and the name originates from the Arabic word "halwa", which means "sweet"[11] and it is made from carrot (in Hindi: gajar) so that it is known as gajar ka halwa (meaning pudding of carrot or Halwa of carrot).[12] It is strongly associated with Punjab but it is not clear whether it originated there. It is very similar to the other types of Punjabi halwa. Gajar ka halwa originally contained carrots, milk and ghee but nowadays includes many other ingredients like mava (khoya).'),
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
