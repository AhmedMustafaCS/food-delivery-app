import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Foodak'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        drawer: const Drawer(
            child: Center(
              child: const Text('I am in the drawer!'),
            ),
            backgroundColor: Colors.white),
        body: const Center(child: const Text('home page')));
  }
}
