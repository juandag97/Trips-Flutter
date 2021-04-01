import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  
  String pathImage = "assets/img/travel.jpg";
  String name = "Sean Lee";
  String details = "1 review 5 photos";
  String comment = "Such an amazing place Mount Fuji";


  Review(this.pathImage, this.name, this.details, this.comment);
  @override
  Widget build(BuildContext context) {
    
  final userComment = Container(
          margin: EdgeInsets.only(
          left: 20.0
        ),
        child: Text(
          comment,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
            color: Color(0xFFa3a5a7)
          ),
        ),
      );

    final userInfo = Container(
         margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7)
        ),
      ),
    );
    
    
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato"
        ),
      ),
    );

    final userDetails = Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
      );

    final photo = Container( 
      margin: EdgeInsets.only(
        top: 20.0, 
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
          ),
      ),

    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}