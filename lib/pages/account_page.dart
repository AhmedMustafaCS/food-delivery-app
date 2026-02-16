import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height:250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                
                image: AssetImage(
                  'assets/images/ahmed.jpg',
                ),
                fit:BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
