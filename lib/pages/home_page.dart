import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textScaler = MediaQuery.textScalerOf(context);
    final isLandScape =  MediaQuery.orientationOf(context) == Orientation.landscape;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                'assets/images/classic_burger.jpg',
                height: isLandScape? size.height*0.65 : size.height * 0.23,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: food.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isLandScape ? 4 : 2,
                mainAxisSpacing: size.height * 0.015,
                crossAxisSpacing: size.height * 0.015,
                mainAxisExtent:  isLandScape ? textScaler.clamp(minScaleFactor: 0.96, maxScaleFactor: 1.1).scale(size.height * 0.6):textScaler.clamp(minScaleFactor:0.96,maxScaleFactor:1.1).scale(size.height*0.2),
              ),
              itemBuilder: (context, index) => FoodGridItem(foodIndex: index),
            ),
          ],
        ),
      ),
    );
  }
}
