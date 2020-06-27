import 'package:flutter/material.dart';
import 'package:retropaper/styles.dart';

class Article extends StatefulWidget {
  var header;

  var footer;

  var description;

  var body;

  VoidCallback onZoom;

  Article(
      {this.header,
      this.description,
      this.body,
      this.footer,
      this.onZoom});

  @override
  State<StatefulWidget> createState() {
    return _ArticleState(
        header: this.header,
        description: this.description,
        body: this.body,
        footer: this.footer,
        onZoom: onZoom
    );
  }
}

class _ArticleState extends State {
  final String header;
  final String description;
  final String body;
  final String footer;
  final VoidCallback onZoom;

  _ArticleState(
      {this.header, this.description, this.body, this.footer, this.onZoom});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        if(onZoom != null)
          onZoom();
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        width: MediaQuery.of(context).size.width * 0.65,
        child: Column(
          children: [
            Text(
              header,
            ),
            Text(
              description,
            ),
            Text(
              body,
            ),
            Text(
              footer,
            ),
          ],
        ),
      ),
    );
  }
}


class ArticleScreen extends StatelessWidget {

  final String header;
  final String description;
  final String body;
  final String footer;
  final String heroTag;

  ArticleScreen({this.header, this.description, this.body, this.footer, this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: heroTag,
        child: Center(
          child: Article(
              header: header,
              description: description,
              body: body,
              footer: footer,
            ),
        ),
      ),
    );
  }
}

