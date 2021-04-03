import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

      final star_half = Container (
        margin: EdgeInsets.only(
          top: 340.0,
          right: 3.0,
        ),

        child: Icon(
          Icons.star_half,
          color: Color(0xFFf2c611),
        )
      );

      final star_border = Container (
        margin: EdgeInsets.only(
          top: 340.0,
          right: 3.0,
        ),

        child: Icon(
          Icons.star_border,
          color: Color(0xFFf2c611),
        )
      );


      final star = Container (
        margin: EdgeInsets.only(
          top: 340.0,
          right: 3.0,
        ),

        child: Icon(
          Icons.star,
          color: Color(0xFFf2c611),
        )
      );
      
      final description = Container(
        margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0, 
        ),
        child: Text(
          descriptionPlace,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 14.0,
            color: Color(0xFF56575a)
          ),
          textAlign:TextAlign.justify,
      ),
      );

      final title_stars = Row(
        children: <Widget>[
          Container( 
            margin: EdgeInsets.only(
              top: 340.0,
              left: 20.0,
              right: 20.0
            ),
              child: Text(
              namePlace,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
          ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        )
        ]
      );
  // return title_stars;
  final content = Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        ButtonPurple("Navigate")
      ],
    ),
  );

  return content;
  // return Column(
  //   children: [
  //     title_stars,
  //     description,
  //   ],
  // );
  }
}

