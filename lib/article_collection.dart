import 'package:flutter/material.dart';

class ArticleCollection extends StatefulWidget{
  final articles;

  @override
  State<StatefulWidget> createState() {
    return _ArticleCollectionState(articles: articles);
  }

  ArticleCollection({this.articles});
}

class _ArticleCollectionState extends State {

  final articles;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ...articles
      ],
    );
  }

  _ArticleCollectionState({this.articles});

}