import 'package:flutter/material.dart';
import 'package:shopping_map/screens/main_screen.dart';
import 'package:shopping_map/screens/shopping_screen.dart';
import 'package:shopping_map/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color(0xFFFCA311),
      )),
      debugShowCheckedModeBanner: false,
      home: const MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  late List<Widget> _pageList;

  @override
  void initState() {
    _pageList = [
      MainScreen(_changeScreen),
      ShoppingScreen(),
      ProfileScreen(),
    ];
    super.initState();
  }

  void _changeScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pageList[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: _changeScreen,
        ),
      ),
    );
  }
}
