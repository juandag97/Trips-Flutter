import 'package:flutter/material.dart';
import 'review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {

  String description = "Aliquam erat volutpat. Donec commodo, libero ut rhoncus vulputate, velit enim cursus libero, ut varius elit nunc non mi. Nulla facilisi. Sed egestas, quam vel consequat fermentum, nisl tellus ornare nibh, eu scelerisque metus massa ut urna. Praesent fermentum orci bibendum, volutpat tellus eget"; 
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("Tokyo", 4, description),
                ReviewList()
              ]
            ),
            HeaderAppBar()
          ],
        );
  }
}