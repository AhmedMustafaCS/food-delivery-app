import 'package:flutter/material.dart';
//import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/pages/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodak - Food Delivery',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[100],
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        dividerTheme: const DividerThemeData(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        listTileTheme:const ListTileThemeData(
          iconColor: Colors.deepOrange,
        ),
        
      ),
      home: const BottomNavBarPage(),
    );
  }
}
