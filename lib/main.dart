import 'package:flutter/material.dart';
import 'package:retropaper/article_collection.dart';
import 'package:retropaper/article_page.dart';
import 'package:retropaper/sample_data.dart';
import 'package:retropaper/zoom_test.dart';
import 'package:zoom_widget/zoom_widget.dart';

import 'article.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
    articles = [
      Article(
        header: "I love hotdogs",
        footer: "I hate Dogs",
        description: "an article for cool kids who love hotdogs",
        body: SampleData.sample1,),

      Article(
        header: "I love hotdogs",
        footer: "I hate Dogs",
        description: "an article for cool kids who love hotdogs",
        body: SampleData.sample1,
      ),
    ];

    heroedArticles = articles.map((e) => Hero(
        child: FlatButton(
          child: e,
          onPressed: () {
            print("Aaaa");
            setState(() {
              currentContent =
                  Hero(
                    child: e.zoomed(),
                    tag: e.body
                  );
            });
          },
        ),
        tag: e.body
    ));

    currentContent = ArticleCollection(
        articles: heroedArticles
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

    body:
//        width: 1000,
//        height: 1920,
        Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/paper_bg.jpg"),
          fit: BoxFit.cover,
          ),
        ),
          child: currentContent
        )
    );
  }
}
