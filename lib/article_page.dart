import 'package:flutter/material.dart';
import 'package:retropaper/article_collection.dart';
import 'package:retropaper/sample_data.dart';
import 'package:retropaper/zoom_test.dart';
import 'package:zoom_widget/zoom_widget.dart';

import 'article.dart';


class MyArticlePage extends StatefulWidget {
  MyArticlePage({Key key, this.title='sample title'}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyArticlePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Article(
        header: "I love hotdogs",
        footer: "I hate Dogs",
        description: "an article for cool kids who love hotdogs",
        body: SampleData.sample1,
      ),
    );
  }
}
