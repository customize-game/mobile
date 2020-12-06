import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './myset_page.dart';
import './news_page.dart';
import './result_page.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key, 
    this.title
  }) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  PageController _pageController;
  bool _showNewsBadge = true;

  static List<Widget> _pageList  = <Widget>[
    NewsPage() ,
    ResultPage() ,
    MysetPage() ,
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;  
      // if( index == 0 ){
        _showNewsBadge = !_showNewsBadge;
      // }
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              child: Badge(
                animationType: BadgeAnimationType.slide,
                child: SvgPicture.asset(
                  "images/news.svg",
                ),
                showBadge: _showNewsBadge,
              ),
            ),
            label: 'ニュース',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "images/result.svg",
              ),
            ),
            label: '戦績',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "images/myset.svg",
              ),
            ),
            label: 'マイセット',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo[800],
        unselectedItemColor: Colors.blueGrey[800],
        onTap: (index) {
          _selectedIndex = index;
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300), 
            curve: Curves.easeIn
          );
        },
      ),
    );
  }
}
