import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailyNewsLayout extends StatefulWidget{
  final List articles;

  DailyNewsLayout({this.articles});

  @override
  State<StatefulWidget> createState() {
    return _DailyNewsLayoutState(articles: articles);
  }

}

class _DailyNewsLayoutState extends State<DailyNewsLayout> {
  final TextStyle small12white = TextStyle(
    fontSize: 12,
    color: Colors.white
  );
  final TextStyle small12black = TextStyle(
      fontSize: 12,
      color: Colors.black
  );
  final TextStyle header = TextStyle(
      fontSize: 24,
      color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  final articles;
  _DailyNewsLayoutState({this.articles});
  @override
  Widget build(BuildContext context) {
    print("articles $articles");
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.05,),
            Row(
              children: [
                SizedBox(width: width * 0.05,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("25th",
                    style: small12black),
                    Text("Monday", style: small12black,),
                  ],
                ),
                SizedBox(width: width * 0.6,),
                Container(
                  width: 51,
                  height: 40,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Daily",
                      style: small12white,),
                      Text("News",
                      style: small12white
                        ,),
                    ],
                  ),
                ),
                SizedBox(width: 0.05,),
              ],
            ),
            Divider(thickness: 3, color: Colors.black,),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit!",
            style: small12black),
            Container(
              width: width * 0.7,
                child: Text("This week There will be a Flutter Hackaton Event", style: header, textAlign: TextAlign.center,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width * 0.2,
                  height: 164,
                  child: articles[0]
                ),
                    Column(
                      children: [
                        SizedBox(
                            height: 110, width: 124, child: Image.asset('assets/sample_pic.png',
                               width: 124, height: 110)),
                        Row(
                          children: [
                            Container(height: 60, width: 50, child: Text("I need some text here")),
                            Container(height: 60, width: 50, child: Text("I need some text here")),
                            Container(height: 60, width: 50, child: Text("I need some text here")),
                          ]
                        )
                      ],
                    ),
                Container(
                    width: width * 0.2,
                    height: 164,
                    child: articles[1]
                ),
                Container(
                    width: width * 0.2,
                    height: 164,
                    child: articles[2]
                ),
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text("Tips on visual desing technics"),
                    Text("Outstanding coding"),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 108,
                              height: 96,
                              child: Image.asset('assets/sample_pic2.png'),
                            ),
                            Row(
                              children: [
                                Container(width: 51, height: 44,child: Text("small text")),
                                Container(width: 51, height: 44,child: Text("small text")),
                              ],
                            ),

                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: width * 0.2,
                              height: 154,
                              child: articles[4],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("1 vs 1''000'000")
                  ],
                ),
                Column(
                  children: [
                    Text("Lipsing")
                  ],
                ),
              ],
            )

          ],
        ),
      ),
    );
  }

}