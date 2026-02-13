import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FoodGridItem extends StatefulWidget {
  final FoodItem foodItem;
  const FoodGridItem({super.key, required this.foodItem});

  @override
  State<FoodGridItem> createState() => _FoodGridItemState();
}

class _FoodGridItemState extends State<FoodGridItem> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Stack(
            children: [
              Image.network(
                widget.foodItem.imgUrl,
                height: 100,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: InkWell(
                    onTap: () => setState(() {
                      widget.foodItem.copyWith(isFavorite:true);
                      isFav = !isFav;
                    }),
                    child: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.foodItem.name,
            style: const TextStyle(
              fontSize: 15.7,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '\$ ${widget.foodItem.price} ',
            style: const TextStyle(
              fontSize: 14.3,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ]),
      ),
    );
  }
}
