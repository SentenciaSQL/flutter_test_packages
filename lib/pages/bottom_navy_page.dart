import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_test_packages/widgets/menu_widget.dart';

class BottomNavyPage extends StatefulWidget {
  @override
  _BottomNavyPageState createState() => _BottomNavyPageState();
}

class _BottomNavyPageState extends State<BottomNavyPage> {

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttom Navy Page'),
      ),
      drawer: WidgetMenu(),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: [
            Container(color: Colors.blueGrey),
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text('Item One')),
          BottomNavyBarItem(icon: Icon(Icons.apps), title: Text('Item Two')),
          BottomNavyBarItem(icon: Icon(Icons.chat_bubble), title: Text('Item Three')),
          BottomNavyBarItem(icon: Icon(Icons.settings), title: Text('Item Four'))
        ],
      ),
    );
  }
}
