import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FoodGridItem extends StatelessWidget {
  final FoodItem foodItem;
  const FoodGridItem({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius:BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Image.network(foodItem.imgUrl, height: 100, fit: BoxFit.cover),
          const SizedBox(
            height: 8,
          ),
          Text(foodItem.name,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              ),
          const SizedBox(
            height: 4,
          ),
          Text('\$ ${foodItem.price} ',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
              ),
        ]),
      ),
    );
  }
}
