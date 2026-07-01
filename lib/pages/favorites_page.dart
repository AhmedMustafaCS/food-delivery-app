import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/pages/food_details_page.dart';
import 'package:food_delivery/widgets/adaptive_fav_button.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  Widget buildLandscapeFavButton(List<FoodItem> favoriteFood, int index, {required double iconSize}) {
    return AdaptiveFavButton(
        title: 'Favorited',
        onPressed: () {
          final targetedItem = favoriteFood[index];
          int targetedIndex = food.indexOf(targetedItem);
          setState(() {
            food[targetedIndex] = food[targetedIndex].copyWith(isFavorite: false);
            favoriteFood.remove(targetedItem);
          });
        },
        iconSize: iconSize);
  }

  Widget buildPortraitFavButton(List<FoodItem> favoriteFood, int index, {required double iconSize}) {
    return InkWell(
      onTap: () {
        final targetedItem = favoriteFood[index];
        int targetedIndex = food.indexOf(targetedItem);
        setState(() {
          food[targetedIndex] = food[targetedIndex].copyWith(isFavorite: false);
          favoriteFood.remove(targetedItem);
        });
      },
      child: Icon(Platform.isAndroid ? Icons.favorite : CupertinoIcons.heart_fill, color: Theme.of(context).primaryColor, size: iconSize),
    );
  }

  Widget emptyFavState(bool isLandscape, Size size) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/empty_state.png',
            fit: BoxFit.cover,
            height: isLandscape ? size.height * 0.45 : size.height * 0.4,
          ),
          FittedBox(
            child: Text('No Favorite Items Found!', style: Theme.of(context).textTheme.headlineSmall),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape = MediaQuery.orientationOf(context) == Orientation.landscape;
    final favoriteFood = food.where((foodItem) => foodItem.isFavorite == true).toList();
    if (favoriteFood.isEmpty) {
      return emptyFavState(isLandscape, size);
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: favoriteFood.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  int targetedIndex = food.indexOf(favoriteFood[index]);
                  return FoodDetailsPage(foodIndex: targetedIndex);
                },
              ),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: LayoutBuilder(
                builder: (context, constraints) => Row(
                  children: [
                    Image.network(
                      favoriteFood[index].imgUrl,
                      //  height: constraints.maxWidth * 0.19,
                      width: constraints.maxWidth * 0.25,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.05,
                    ),
                    SizedBox(
                      width: isLandscape ? constraints.maxWidth * 0.48 : constraints.maxWidth * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              favoriteFood[index].name,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(height: constraints.maxWidth * 0.02),
                          FittedBox(
                            child: Text(
                              '\$ ${favoriteFood[index].price}',
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (!isLandscape) buildPortraitFavButton(favoriteFood, index, iconSize: constraints.maxWidth * 0.09),
                    if (isLandscape) buildLandscapeFavButton(favoriteFood, index, iconSize: constraints.maxWidth * 0.06),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
