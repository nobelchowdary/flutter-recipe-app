import 'package:flutter/material.dart';
import 'package:food_recipe/reviewscard.dart';

import 'package:url_launcher/url_launcher.dart';

class BaluShahi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Bahu Shahi'),
            subtitle: Text(
                'Balushahi is a famous North Indian sweet. In south India, the same sweet is called as badusha or badhusha. In all miThai shops you can easily get balushahi or badusha.'),
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
                      MaterialPageRoute(builder: (context) => BaluShahipage()));
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

class BaluShahipage extends StatelessWidget {
  @override
  String url =
      'https://recipes.timesofindia.com/recipes/balushahi/rs55476463.cms';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Balu Shahi'),
        backgroundColor: Color.fromRGBO(268, 218, 0, 0),
      ),
      body: ListView(children: [
        Image.asset(
          'assets/images/Balu Shahi.jpeg',
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
                        'Balu Shahi',
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
              const Text('4'),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(32),
          child: Text(
              'Balushahi is a traditional dessert originating from the Indian subcontinent. It is similar to a glazed doughnut in terms of ingredients, but differs in texture and taste. In South India, a similar pastry is known as badushah. Badushahs (also spelled bhadushah) are made from a stiff dough made with all-purpose flour, ghee and a pinch of baking soda. One-inch-diameter (25 mm), 1⁄2-inch-thick (13 mm) discs are shaped by hand, fried in ghee or oil and dunked in thick sugar syrup to make a sugar coating. They are very sweet, but tasty with a slightly flaky texture. Badushahs are sold in sweet shops in Andhra Pradesh, Telangana, Kerala, Karnataka and Tamil Nadu. Badushahs have been served at Bimbis at Pazhvangadi in Thiruvananthapuram[2] and at Sri Rama Vilas (better-known Gundappas hotel).'),
        ),
        ElevatedButton(
          onPressed: () {
            launch(url);
          },
          child: Text('Click for more information'),
        ),
        Reviewscard(),
      ]),
    );
  }
}
