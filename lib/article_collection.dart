import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.horizontal,
      childAspectRatio: 1,
      shrinkWrap: false,
      children: [
        ...articles
      ],
    );
  }

  _ArticleCollectionState({this.articles});

}