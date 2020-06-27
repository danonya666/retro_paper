import 'package:flutter/material.dart';
import 'package:retropaper/models/article.dart';
import '../components/article.dart';


class ArticleScreen extends StatelessWidget {

  final ArticleModel article;
  final String heroTag;

  ArticleScreen({this.article, this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: heroTag,
        child: Center(
          child: Article(
            article: article,
          ),
        ),
      ),
    );
  }
}
