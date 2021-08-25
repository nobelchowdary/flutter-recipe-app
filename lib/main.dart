import 'package:flutter/material.dart';
import 'package:food_recipe/Balu%20shahi.dart';
import 'package:food_recipe/Gajar%20ka%20Halwa.dart';
import 'package:food_recipe/GulabJamun.dart';
import 'package:food_recipe/Jalebi.dart';
import 'package:food_recipe/KajuKatli.dart';
import 'package:food_recipe/Kheer.dart';
import 'package:food_recipe/Rasagulla.dart';


void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Favourite Dish'),
        backgroundColor: Colors.orangeAccent.shade400,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 20.0),
        Text(
          'Select your Recipe',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20.0),
        Expanded(
          child: Container(
            child: ListView(
              children: [
                GulabJamun(),
                SizedBox(
                  height: 20.0,
                ),
                /*Golconda1(),
                SizedBox(
                  height: 20.0,
                ),*/
                Halwa(),
                SizedBox(
                  height: 20.0,
                ),
                Jalebi(),
                SizedBox(
                  height: 20.0,
                ),
                KajuKatli(),
                SizedBox(
                  height: 20.0,
                ),
                Kheer(),
                SizedBox(
                  height: 20.0,
                ),
                Rasagulla(),
                SizedBox(
                  height: 20.0,
                ),
                BaluShahi(),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
