import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int currentIndex = 1;
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
      _pageController.jumpToPage(
        index,
        // duration: const Duration(milliseconds: 300), curve: Curves.ease,
      );
    });
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          Center(
            child: Container(
              child: Text('1'),
            ),
          ),
          Center(
            child: Container(
              child: Text('2'),
            ),
          ),
          Center(
            child: Container(
              child: Text('3'),
            ),
          ),
          Center(
            child: Container(
              child: Text('4'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_outlined),
            label: 'transaction',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera_front_outlined), label: 'saving'),
        ],
      ),
    );
  }
}
