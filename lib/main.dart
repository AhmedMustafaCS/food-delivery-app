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
        primarySwatch:Colors.deepOrange,
        
      ),
      home: const BottomNavBarPage(),
    );
  }
}
