import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/img/travel.jpg", "Daniela", "1 review 5 photos", "Mount Fuji is such an amazing place"),
        new Review("assets/img/travel.jpg", "Daniela", "1 review 5 photos", "Mount Fuji is such an amazing place"),
        new Review("assets/img/travel.jpg", "Daniela", "1 review 5 photos", "Mount Fuji is such an amazing place")
      ],
    );
  }
}