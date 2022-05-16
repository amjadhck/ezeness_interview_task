import 'package:ezeness_interview_task/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedPageIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container()
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        onTap: _selectPage,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedPageIndex,
        unselectedFontSize: 11,
        selectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.white, icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.wb_twighlight),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.shopping_basket),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.calendar_today_outlined),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.alarm),
              label: ""),
        ],
      ),
    );
  }
}
