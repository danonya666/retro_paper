import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      itemCount: articles.length,
      itemBuilder: (BuildContext context, int index) => articles[index],
      staggeredTileBuilder: (int index) =>
      new StaggeredTile.fit(2),
    );
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