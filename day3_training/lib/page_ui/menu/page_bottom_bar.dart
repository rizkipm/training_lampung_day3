import 'package:day3_training/page_ui/menu/page_widget_bottombar.dart';
import 'package:flutter/material.dart';

class PageBottomBar extends StatefulWidget {
  @override
  _PageBottomBarState createState() => _PageBottomBarState();
}

class _PageBottomBarState extends State<PageBottomBar> {
  int currentIndex = 0;

  final List<Widget> _listColorMenu = [
    PageWidgetBottombar(Colors.green),//0
    PageWidgetBottombar(Colors.orange),//1
    PageWidgetBottombar(Colors.redAccent),//2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Bottom Bar'),
        backgroundColor: Colors.redAccent,
      ),
      body: _listColorMenu[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedButton,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Message',
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            label: 'Profil',
            icon: Icon(Icons.corporate_fare),
          ),
        ],
      ),
    );
  }

  void onTappedButton(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
