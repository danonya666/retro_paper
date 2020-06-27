import 'package:flutter/material.dart';
import 'package:retropaper/styles.dart';

class Article extends StatefulWidget {
  var header;

  var footer;

  var description;

  var body;

  bool isZoomed;
  Article({this.header, this.description, this.body, this.footer, this.isZoomed=false});

  @override
  State<StatefulWidget> createState() {
    return _ArticleState(header: this.header, description: this.description, body: this.body, footer: this.footer, isZoomed: this.isZoomed);
  }

  Article zoomed() {
    this.isZoomed = true;
    return this;
  }

}

class _ArticleState extends State {
  final String header;
  final String description;
  final String body;
  final String footer;
  final double unzoomed = 0.5;
  final double zoomed = 2;
  final bool isZoomed;


  _ArticleState({this.header, this.description, this.body, this.footer, this.isZoomed=false});

  @override
  Widget build(BuildContext context) {
    print('zoomed $isZoomed');
    return FlatButton(
//      onPressed: () {
//        setState(() {
//          isZoomed = !isZoomed;
//        });
//      },
      child: Container(
          child: Column(
            children: [
              Text(
                header,
                style: Style.header(zoom: unzoomed),
              ),
              Text(
                description,
                style: Style.description(zoom: isZoomed? zoomed: unzoomed),
              ),
              Text(
                body,
                style: Style.body(zoom: isZoomed? zoomed: unzoomed),
              ),
              Text(
                footer,
                style: Style.footer(zoom: isZoomed? zoomed: unzoomed),
              ),
            ],
          ),
      ),
    );
  }

}