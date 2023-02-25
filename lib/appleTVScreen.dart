import 'package:flutter/material.dart';
import 'utils/consts.dart';
import 'dart:ui';
import 'package:code_fresher_session1/tab/welcomeScreen.dart';
import 'package:code_fresher_session1/tab/trendyFilm.dart';

class AppleTVScreen extends StatefulWidget {
  @override
  _AppleTVScreen createState() => _AppleTVScreen();
}

class _AppleTVScreen extends State<StatefulWidget> {
  int _selectedIndex = 0;
  int currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Center(
        child: Text(
      '',
      style: MyTextStyle.optionStyle,
    )),
    Center(
      child: Text(
        '',
        style: MyTextStyle.optionStyle,
      ),
    ),
    Center(
      child: Text(
        '',
        style: MyTextStyle.optionStyle,
      ),
    ),
    Center(
      child: Text(
        '',
        style: MyTextStyle.optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      appBar: AppBar(
        shape: Border(
            bottom: BorderSide(color: Color.fromRGBO(70, 70, 70, 1), width: 1)),
        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
        centerTitle: true,
        leadingWidth: 70,
        toolbarOpacity: 0.5,
        title: Text(
          'AppleTV',
          style: MyTextStyle.appBarStyle,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          )
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: Color.fromRGBO(51, 51, 51, 1)),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Color.fromRGBO(46, 46, 46, 1), width: 2.0))),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps_outlined), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.tv_outlined), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.playlist_add_sharp), label: ''),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color.fromRGBO(227, 40, 72, 1),
            unselectedItemColor: Color.fromRGBO(172, 172, 172, 1),
            onTap: _onItemTapped,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(0),
        child: Scrollbar(
          isAlwaysShown: true, //always show scrollbar
          thickness: 10, //width of scrollbar
          radius: Radius.circular(20), //corner radius of scrollbar
          scrollbarOrientation: ScrollbarOrientation.left, //
          child: Center(
            child: currentIndex == 0 ? WelcomeScreen() : TrendyFilm(),
          ),
        ),
      ),
    );
  }
}
