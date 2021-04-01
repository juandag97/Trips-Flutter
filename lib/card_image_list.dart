import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/first_tokyo.jpeg"),
          CardImage("assets/img/second_tokyo.jpg"),
          CardImage("assets/img/third_tokyo.jpg"),
          CardImage("assets/img/forth_tokyo.jpg"),
          CardImage("assets/img/fifth_tokyo.jpg"),
        ],
      ),
    );
  }
}