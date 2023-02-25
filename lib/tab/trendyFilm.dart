import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:code_fresher_session1/utils/consts.dart';

class TrendyFilm extends StatefulWidget {
  @override
  _TrendyFilm createState() => _TrendyFilm();
}

class _TrendyFilm extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      body: Container(
        margin: EdgeInsets.only(top: 25, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 25),
                  child: Text(
                    "Channels",
                    style: MyTextStyle.headingHighlightStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  child: Text(
                    "Trending",
                    style: MyTextStyle.headingStyle,
                  ),
                ),
                Container(
                  child: Text(
                    "series",
                    style: MyTextStyle.headingStyle,
                  ),
                ),
              ],
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
