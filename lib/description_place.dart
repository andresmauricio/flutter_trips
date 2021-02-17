import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String loremText =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';
  String textPlace;
  String descriptionPlace;
  int starsCount;
  DescriptionPlace(this.textPlace, this.descriptionPlace, this.starsCount);
  @override
  Widget build(BuildContext context) {
    final start = Container(
      margin: EdgeInsets.only(top: 250.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final startHalf = Container(
      margin: EdgeInsets.only(top: 250.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final startBorder = Container(
      margin: EdgeInsets.only(top: 250.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace.isNotEmpty ? descriptionPlace : loremText,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 250.0, left: 20.0, right: 20.0),
          child: Text(
            textPlace,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(children: <Widget>[
          start,
          start,
          start,
          startHalf,
          startBorder,
        ])
      ],
    );
    return Column(
      children: [titleStars, description],
    );
  }
}
