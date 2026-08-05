import 'package:flutter/material.dart';
import 'package:food_delivery/models/category_item.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/pages/food_details_page.dart';
import 'package:food_delivery/ui_models/food_details_args.dart';
import 'package:food_delivery/utilities/app_assets.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textScaler = MediaQuery.textScalerOf(context);
    final isLandScape = MediaQuery.orientationOf(context) == Orientation.landscape;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                AppAssets.burgerBanner,
                height: isLandScape ? size.height * 0.65 : size.height * 0.23,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(
              height:size.height*0.13,
              child: ListView.builder(
                itemCount:categories.length,
                scrollDirection:Axis.horizontal,
                itemBuilder:(context,index)=>Padding(
                  padding: const EdgeInsetsDirectional.only(end:16.0),
                  child: Container(
                    width:size.width*0.2,
                  //  height: size.height*0.07,
                    decoration:BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(16.0)
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.asset(categories[index].imgPath),
                          const SizedBox(height:8.0),
                          Text(categories[index].title,style:Theme.of(context).textTheme.titleSmall),
                        ],
                      ),
                    ),
                  ),
                ),
              
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
                mainAxisExtent: isLandScape ? textScaler.clamp(minScaleFactor: 0.96, maxScaleFactor: 1.1).scale(size.height * 0.6) : textScaler.clamp(minScaleFactor: 0.96, maxScaleFactor: 1.1).scale(size.height * 0.2),
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(FoodDetailsPage.routeName, arguments: FoodDetailsArgs(foodIndex: index)).then(
                    (value) {
                      setState(() {});
                      debugPrint('The value returned in home $value');
                    },
                  );
                },
                child: FoodGridItem(foodIndex: index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
