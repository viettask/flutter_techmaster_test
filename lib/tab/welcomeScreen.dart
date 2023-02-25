import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:code_fresher_session1/utils/consts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

final List<String> imagesList = [
  'https://d18nu206jtfjv5.cloudfront.net/wp-content/uploads/2019/05/aaa1-1068x1582.jpg',
  'http://splashreport.com/wp-content/uploads/2017/05/new-spiderman-banner.jpg',
  'https://occ-0-2705-2706.1.nflxso.net/dnm/api/v6/Da_vleYcahiCE7JMYt8LJRyoenc/AAAABYaDKBjVXacPHK_wWlb_8J8duE2lVgFbK08fqrD7BMgD24nopQNvB5U7S-Cp11QsBHDt1b2QgvRl7JUh9vjZFXZShKJt.jpg',
];
final List<String> titles = [
  ' Coffee ',
  ' Bread ',
  ' Gelato ',
];

class _WelcomeScreen extends State<StatefulWidget> {
  int _currentIndex = 0;

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
                    "Featured",
                    style: MyTextStyle.headingHighlightStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  child: Text(
                    "New release",
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
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  //scrollDirection: Axis.vertical,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
                items: imagesList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(4),
                        child: Card(
                          margin: EdgeInsets.only(
                            top: 20.0,
                            bottom: 10.0,
                          ),
                          elevation: 10.0,
                          shadowColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(2.0),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Image.network(
                                  item,
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                ),
                                // Center(
                                //   child: Text(
                                //     '${titles[_currentIndex]}',
                                //     style: TextStyle(
                                //       fontSize: 24.0,
                                //       fontWeight: FontWeight.bold,
                                //       backgroundColor: Colors.black45,
                                //       color: Colors.white,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imagesList.map((urlOfItem) {
                int index = imagesList.indexOf(urlOfItem);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Color.fromRGBO(0, 0, 0, 0.8)
                        : Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                );
              }).toList(),
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    "What to watch",
                    style: MyTextStyle.headingHighlightStyle,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 100,
              child: GridView.count(
                    childAspectRatio: 3/4,
                    crossAxisSpacing: 10, mainAxisSpacing: 6,
 //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, 
                  children: [

                    // imagesList.map((url) => Card(
                    //     child: Image.network(url),
                    //   );
                    // ).toList()

                    Container(
                      child: Image.network('https://d18nu206jtfjv5.cloudfront.net/wp-content/uploads/2019/05/aaa1-1068x1582.jpg',
                                    fit: BoxFit.fill,
                                    width: double.infinity),
                    ),
                    Image.network('http://splashreport.com/wp-content/uploads/2017/05/new-spiderman-banner.jpg',
                                  fit: BoxFit.fill,
                                  width: double.infinity,),
                    Image.network('https://occ-0-2705-2706.1.nflxso.net/dnm/api/v6/Da_vleYcahiCE7JMYt8LJRyoenc/AAAABYaDKBjVXacPHK_wWlb_8J8duE2lVgFbK08fqrD7BMgD24nopQNvB5U7S-Cp11QsBHDt1b2QgvRl7JUh9vjZFXZShKJt.jpg',
                                  fit: BoxFit.fill,
                                  width: double.infinity,),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
