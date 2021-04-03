import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  _FloatingActionButtonGreenState createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  
  bool _press = false;

  void onPressedFav(){

    setState((){
      _press = !this._press;
    });

    ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(_press?"Added to favorites": "Dropped of favorites")),
        );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        _press?
        Icons.favorite:Icons.favorite_border
      ),
    );
  }
}