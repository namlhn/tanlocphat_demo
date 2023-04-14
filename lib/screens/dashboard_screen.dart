import 'package:flutter/material.dart';
import 'package:tamlocphat_app/screens/home_screen.dart';
import 'package:tamlocphat_app/screens/movie_screen.dart';
import 'package:tamlocphat_app/screens/television_screen.dart';

import 'news_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> pages = [
    const HomeScreen(),
    const NewsScreen(),
    const TelevisionScreen(),
    const MoviceScreen(),
  ];
  int? currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex!],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFFFFFFF),
        unselectedItemColor: Colors.grey.shade400,
        showUnselectedLabels: true,
        // selectedLabelStyle: secondaryTextStyle(color: ESPrimaryColor),
        // unselectedLabelStyle: secondaryTextStyle(),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Tin tức'),
          BottomNavigationBarItem(
              icon: Icon(Icons.monitor), label: 'Truyền hình'),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined), label: 'Phim ảnh'),
        ],
        currentIndex: currentIndex!,
        selectedItemColor: Color(0xFF4DC591),
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
