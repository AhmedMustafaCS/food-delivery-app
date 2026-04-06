import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final favoriteFood = food.where((foodItem) => foodItem.isFavorite == true).toList();
    if (favoriteFood.isEmpty) {
      return Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/empty_state.png',
              fit: BoxFit.cover,
              height: size.height * 0.4,
            ),
            FittedBox(
              child: Text('No Favorite Items Found!', style: Theme.of(context).textTheme.headlineSmall),
            ),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: favoriteFood.length,
        itemBuilder: (context, index) => Card(
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
                    width: constraints.maxWidth * 0.6,
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
                  InkWell(
                    onTap: () {
                      final targetedItem = favoriteFood[index];
                      int targetedIndex = food.indexOf(targetedItem);
                      setState(() {
                        food[targetedIndex] = food[targetedIndex].copyWith(isFavorite: false);
                        favoriteFood.remove(targetedItem);
                      });
                    },
                    child: Icon(Icons.favorite, color: Theme.of(context).primaryColor, size: constraints.maxWidth * 0.09),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
