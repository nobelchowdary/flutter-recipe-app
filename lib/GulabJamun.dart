import 'package:flutter/material.dart';
import 'package:food_recipe/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class GulabJamun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Gulab Jamun'),
            subtitle: Text(
                'Gulab jamun was first prepared in medieval Iran and was derived from a fritter that Central Asian Turkic conquerors brought to India. Other theory claims that it was accidentally prepared by the Mughal emperor Shah Jahans personal chef'),
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
  String url =
      'https://recipes.timesofindia.com/recipes/gulab-jamun/rs63799510.cms';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Gulab Jamun'),
          backgroundColor: Color.fromRGBO(268, 218, 0, 0),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/Gulab Jamun.jpeg',
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
                          'Gulab Jamun',
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
                const Text('41'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: Text(
                'Gulab jamun (also spelled gulaab jamun) is a milk-solid-based sweet, originating in Medieval Iran,[1] and a type of mithai, popular in India, Nepal, Pakistan, the Maldives (where it is known as gulab ki janu), and Bangladesh & Odisha (where it is known as golap jam), as well as Myanmar. It is also common in nations with substantial populations of people with South Asian heritage, such as Mauritius, Fiji, the Malay Peninsula, Great Britain, South Africa, and the Caribbean countries of Jamaica, Trinidad and Tobago, Guyana, and Suriname. It is made mainly from milk solids, traditionally from khoya, which is milk reduced to the consistency of a soft dough. Modern recipes call for dried or powdered milk instead of khoya. It is often garnished with dried nuts such as almonds and cashews to enhance flavour. 25th of May is celebrated as world Gulab Jamun Day.'),
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
