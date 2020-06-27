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
      appBar: AppBar(
        backgroundColor: Colors.white12,
        iconTheme: IconThemeData(
          color: Colors.black54
        ),
        elevation: 0,
      ),
      body: Center(
        child: Hero(
          tag: heroTag,
          child: Article(
            article: article,
          ),
        ),
      ),
    );
  }
}
