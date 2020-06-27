import 'package:flutter/material.dart';
import 'package:retropaper/components/article_collection.dart';
import 'package:retropaper/models/article.dart';
import 'package:retropaper/views/article_page.dart';
import 'package:retropaper/helpers/sample_data.dart';

import 'components/article.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  var articles;
  var heroedArticles;
  var currentContent;

  _MyHomePageState() {
    articles = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((index) => ArticleModel(
        title: "title$index",
        introduction: "introduction$index",
        afterword: "afterword$index",
        id: index.toString(),
        text: SampleData.sample2)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ArticleCollection(
          articles: articles.map((ArticleModel article) =>
            Hero(
              tag: "article${article.id}",
              child: Article(
                article: article,
                onZoom: () {
                  Navigator.of(context).push(
                      PageRouteBuilder(
                          pageBuilder: (_,__,___) {
                            return ArticleScreen(
                              article: article,
                              heroTag: "article${article.id}",
                            );
                          }
                      )
                  );
                },
              ),
            )
          ).toList(),
        ));
  }
}
