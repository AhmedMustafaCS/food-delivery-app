class FoodItem {
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavorite;
  const FoodItem({required this.name, required this.imgUrl, required this.price, this.isFavorite =false});
}

List<FoodItem> food = [
  FoodItem(
    name: 'Beef Burger',
    imgUrl: 'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 8.5,
    isFavorite:true,
  ),
  FoodItem(
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
    isFavorite:true,
  ),
  FoodItem(
    name: 'Cheese Burger',
    imgUrl: 'https://www.pngmart.com/files/16/Cheese-Burger-PNG-Transparent-Image.png',
    price: 8,
  ),
  FoodItem(
    name: 'Chicken Pizza',
    price: 9,
    imgUrl: 'https://i.pinimg.com/736x/2d/6b/7d/2d6b7df948d14f41e9a1a48e5b37e9c5.jpg',
    isFavorite:true,
    //'https://i.pinimg.com/1200x/df/d1/18/dfd11899c2f2a267e3f299b1b275afff.jpg',
  ),
  FoodItem(
    name: 'Pasta',
    imgUrl: 'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
  ),
];
