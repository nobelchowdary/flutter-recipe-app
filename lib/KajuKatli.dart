import 'package:flutter/material.dart';
import 'package:food_recipe/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class KajuKatli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Kaju Katli'),
            subtitle: Text(
                'Kaju katri (literally "cashew slice"), also known as kaju barfi, is an Indian dessert similar to a barfi. Kaju means cashew; Barfi is often, but not always, made by thickening milk with sugar and other ingredients (such as dry fruits and mild spices)'),
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
                      MaterialPageRoute(builder: (context) => KajuKatlipage()));
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

class KajuKatlipage extends StatelessWidget {
  @override
  String url =
      'https://recipes.timesofindia.com/recipes/kaju-katli/rs55048826.cms';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Kaju Katli'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/Kaju katli.jpeg',
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
                          'Kaju Katli',
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
                'The dish is prepared with cashew nuts soaked in water for a considerable period of time (usually overnight), which are then ground to a paste. Sugar solution is boiled down until a single thread forms when two fingers are dipped into it and pulled apart, after which it is added to the ground cashews kaju. Ghee, saffron (kesar), and dried fruits may also be added.[1] The paste is then spread and flattened in a shallow, flat-bottomed dish and cut into bite-sized diamond-shaped pieces. The pieces are usually decorated with edible silver foil. The finished sweet is usually white or yellow in color depending on the ingredients used for the paste and the proportions of each used. Katli is traditionally eaten during Diwali.'),
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
