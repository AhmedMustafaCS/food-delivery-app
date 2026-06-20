import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/custom_back_button.dart';
import 'package:food_delivery/widgets/favorite_button.dart';

class FoodDetailsPage extends StatelessWidget {
  final FoodItem foodItem;
  const FoodDetailsPage({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      //  appBar: AppBar(),
        body: Column(
          children: [
            DecoratedBox(
              decoration:BoxDecoration(
                color:Colors.grey.shade300,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0,horizontal:16.0),
                child: SafeArea(
                  child: SizedBox(
                     height: size.height*0.45,
                     width:size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children:[
                            CustomBackButton(height: size.height*0.04, width: size.width*0.09),
                            FavoriteButton(foodIndex: 1, width:size.width*0.09,height:size.height*0.04),
                            
                          ],
                        ),
                       const  Spacer(),
                        Align(
                          alignment:Alignment.center,
                          child: Image.network(
                            foodItem.imgUrl,
                            fit: BoxFit.contain,
                            height: size.height*0.3,
                           // width:size.width,
                          
                           
                           // width:size.width,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
