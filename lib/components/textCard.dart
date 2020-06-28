import 'package:flutter/material.dart';

class TextCard extends StatelessWidget{
  final height;
  final width;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Text(
        text
      ),
    );
  }

  TextCard({this.height, this.width, this.text});


}