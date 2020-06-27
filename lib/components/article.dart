import 'package:flutter/material.dart';
import 'package:retropaper/models/article.dart';

class Article extends StatefulWidget {
  ArticleModel article;
  VoidCallback onZoom;

  Article(
      {this.article,
      this.onZoom});

  @override
  State<StatefulWidget> createState() {
    return _ArticleState(
        article: article,
        onZoom: onZoom
    );
  }
}

class _ArticleState extends State {
  final ArticleModel article;
  final VoidCallback onZoom;

  _ArticleState(
      {this.article, this.onZoom});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        if(onZoom != null)
          onZoom();
      },
      child: Container(
        child: Column(
          children: [
            Text(
              article.title,
            ),
            Text(
              article.introduction,
            ),
            Text(
              article.text,
            ),
            Text(
              article.afterword,
            ),
          ],
        ),
      ),
    );
  }
}

