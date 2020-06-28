import 'package:flutter/material.dart';
import 'package:retropaper/models/article.dart';

class SmallArticle extends StatefulWidget {
  ArticleModel article;
  VoidCallback onZoom;

  SmallArticle(
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
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
              )
            ),
            Text(
              article.introduction,
              style: TextStyle(
                fontSize: 8
              )
            ),
            Text(
              article.text,
              style: TextStyle(
                fontSize: 4
              ),
            ),
            Text(
              article.afterword,
              style: TextStyle(
                fontSize: 6
              )
            ),
          ],
        ),
      ),
    );
  }
}

