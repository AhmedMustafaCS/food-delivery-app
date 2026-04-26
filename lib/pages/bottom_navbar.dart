import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/pages/account_page.dart';
import 'package:food_delivery/pages/favorites_page.dart';
import 'package:food_delivery/pages/home_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedIndex = 0;
  void onItemTapped(int newIndex) {
    setState(
      () {
        selectedIndex = newIndex;
      },
    );
  }

  List<Widget> bodyOptions = const [
    HomePage(),
    FavoritesPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget? appBar;
    final Widget? bottomNavBar;
    if (Platform.isAndroid) {
      appBar = AppBar(
        toolbarHeight: 40,
        title: const Text('Foodak'),
      );
      bottomNavBar = BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: selectedIndex,
        // selectedItemColor: Colors.deepOrange,
        onTap: onItemTapped,
      );
    } else if (Platform.isIOS) {
      appBar = CupertinoNavigationBar(
        middle: const Text('Foodak'),
      );
      bottomNavBar = CupertinoTabBar(
        activeColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: selectedIndex,
        // selectedItemColor: Colors.deepOrange,
        onTap: onItemTapped,
      );
    } else {
      appBar = null;
      bottomNavBar = null;
    }

    return Scaffold(
      appBar: appBar,
      body: SafeArea(child: bodyOptions[selectedIndex]),
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: Center(
          child: Text('I am in the drawer!'),
        ),
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
