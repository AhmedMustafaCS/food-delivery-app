class FoodItem {
  final String id;
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavorite;
  final String categoryId;
  const FoodItem({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.categoryId,
    this.isFavorite = false,
  });

  FoodItem copyWith({
    String? name,
    String? imgUrl,
    double? price,
    bool? isFavorite,
    String? categoryId,
    String? id,
  }) {
    return FoodItem(
      id: id ?? this.id,
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}

List<FoodItem> food = [
  FoodItem(
    id: 'burger 1',
    name: 'Beef Burger',
    imgUrl: 'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 8.5,
    categoryId: '1',
  ),
  FoodItem(
    id: 'burger 2',
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
    categoryId: '1',
  ),
  FoodItem(
    id: 'burger 3',
    name: 'Cheese Burger',
    imgUrl: 'https://www.pngmart.com/files/16/Cheese-Burger-PNG-Transparent-Image.png',
    price: 8,
    categoryId: '1',
  ),
  FoodItem(
    id: 'burger 4',
    name: 'Classic Burger',
    imgUrl: 'https://pngpix.com/images/thumbnail/veggie-burger-king-png-xgw-pdaq6jztb7grp6dt.webp',
    price: 7.5,
    categoryId: '1',
  ),
  FoodItem(
    id: 'burger 5',
    name: 'Mega Beef Burger',
    imgUrl: 'https://pngpix.com/images/thumbnail/burger-king-cheesy-bacon-burger-cqqc4nnnpzs0y81t.webp',
    price: 10,
    categoryId: '1',
  ),
  FoodItem(
    id: 'burger 6',
    name: 'Smokey BBQ Burger',
    imgUrl: 'https://pngpix.com/images/thumbnail/burger-king-texas-double-whopper-png-mbc-2l4ba2uc4il6mcrj.webp',
    price: 11.5,
    categoryId: '1',
  ),
  FoodItem(
    id: 'burger 7',
    name: 'Signature Burger',
    imgUrl: 'https://pngpix.com/images/thumbnail/monster-burger-png-93-cc9747azt3lu3t1j.webp',
    price: 13,
    categoryId: '1',
  ),
  FoodItem(
    id: 'pizza 1',
    name: 'Super Supreme Pizza',
    price: 13,
    imgUrl: 'https://i.pinimg.com/1200x/df/d1/18/dfd11899c2f2a267e3f299b1b275afff.jpg',
    categoryId: '2',
  ),
  FoodItem(
    id: 'pizza 2',
    name: 'Chicken Fajita Pizza',
    imgUrl: 'https://pngpix.com/images/thumbnail/delicious-chicken-veggie-pizza-4gpjzbmrf4jorrmu.webp',
    price: 11.5,
    categoryId: '2',
  ),
  FoodItem(
      id: 'pizza 3',
      name: 'Mushroom Pizza',
      imgUrl: 'https://pngpix.com/images/high/supreme-pizza-delicious-toppings-jpg-4callt05g6unay8l.webp',
      //'https://pngpix.com/images/hd/pepperoni-sausage-pizza-delicious-8211m8lotk8e1qgb.webp' ,
      price: 9.5,
      categoryId: '2'),
  FoodItem(
    id: 'pizza 4',
    name: 'Classic Pepperoni',
    imgUrl: 'https://pngpix.com/images/hd/pepperoni-sausage-pizza-delicious-8211m8lotk8e1qgb.webp',
    price: 12,
    categoryId: '2',
  ),
  FoodItem(
    id: 'pasta 1',
    name: 'Creamy Veggie Penne',
    imgUrl: 'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 6.5,
    categoryId: '3',
  ),
  FoodItem(
    id: 'pasta 2',
    name: 'Chicken Spaghetti',
    imgUrl: 'https://pngpix.com/images/hd/chicken-lo-mein-noodles-png-05242024-en7pgbqkuvsps30v.webp',
    price: 8,
    categoryId: '3',
  ),
  FoodItem(
    id: 'pasta 3',
    name: 'Spicy Tomato Pasta',
    imgUrl: 'https://pngpix.com/images/thumbnail/chicken-tomato-pasta-dish-6bh2k66o4f9dghc1.webp',
    price: 7.5,
    categoryId: '3',
  ),
  FoodItem(
    id: 'pasta 4',
    name: 'Beef Ragu Pasta',
    imgUrl: 'https://pngpix.com/images/thumbnail/pasta-bolognese-png-05232024-sn0ss0qyxlaydwc8.webp',
    price: 9,
    categoryId: '3',
  ),
  FoodItem(
    id: 'pasta 5',
    name: 'Cheese Tortellini',
    imgUrl: 'https://pngpix.com/images/hd/tortellini-soup-pasta-png-ywk46-gypltvmadxwye0ir.webp',
    price: 8,
    categoryId: '3',
  ),
  FoodItem(
    id: 'chicken 1',
    name: 'Crispy Fried Chicken',
    imgUrl: 'https://pngpix.com/images/thumbnail/juicy-fried-chicken-png-lto66-6zvkw8fk8h4z07z8.webp',
    price: 8.5,
    categoryId: '4',
  ),
  FoodItem(
    id: 'chicken 2',
    name: 'Buffalo Chicken Wings',
    imgUrl: 'https://pngpix.com/images/thumbnail/fried-chicken-wings-png-05242024-24wull7e0c5kl3h9.webp',
    price: 7,
    categoryId: '4',
  ),
  FoodItem(
    id: 'chicken 3',
    name: 'Sweet Chili Wings',
    imgUrl: 'https://pngpix.com/images/thumbnail/sesame-chicken-wings-png-49-z75lojt0lg0okz0j.webp',
    price: 8,
    categoryId: '4',
  ),
  FoodItem(
    id: 'chicken 4',
    name: 'Chicken Katsu',
    imgUrl: 'https://pngpix.com/images/thumbnail/crispy-fried-chicken-plate-vtnt125rnxeu80se.webp',
    price: 10,
    categoryId: '4',
  ),
  FoodItem(
    id: 'fries',
    name: 'Classic French Fries',
    imgUrl: 'https://media.istockphoto.com/id/2207294206/photo/white-paper-french-fry-box-mock-up-french-fries-holder-cardboard-container-mockup-fast-street.webp?a=1&b=1&s=612x612&w=0&k=20&c=C1EkChcnd7o78SW3J7e_nda44jzt3ZQu4xrjcMYxfRw=',
    price: 3.5,
    categoryId: '5',
  ),
  FoodItem(
    id: 'fries 2',
    name: 'Seasoned Curly Fries',
    imgUrl: 'https://pngpix.com/images/hd/curly-fries-delight-png-1-w9r25kfnwowoaaye.webp',
    price: 5,
    categoryId: '5',
  ),
  FoodItem(
    id: 'fries 3',
    name: 'Loaded Cheese Fries',
    imgUrl: 'https://pngpix.com/images/hd/loaded-curly-fries-delicious-snack-png-n3w915jia67trvq0.webp',
    price: 8,
    categoryId: '5',
  ),
  FoodItem(
    id: 'fries 4',
    name: 'Chili Cheese Fries',
    imgUrl: 'https://pngpix.com/images/thumbnail/zesty-italian-fries-png-gha68-kvhq5wkcu0wyf1pm.webp',
    price: 6.5,
    categoryId: '5',
  ),
  FoodItem(
    id: 'drink 1',
    name: 'Classic Orange',
    imgUrl: 'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c168.png',
    price: 3.5,
    categoryId: '6',
  ),
  FoodItem(
    id: 'drink 2',
    name: 'Kiwi Mango Smoothie',
    imgUrl: 'https://pngpix.com/images/thumbnail/green-vegetable-juice-png-pfs2-9kdm82zlkss9tudn.webp',
    price: 5,
    categoryId: '6',
  ),
  FoodItem(
    id: 'drink 3',
    name: 'Beetroot Detox Juice ',
    imgUrl: 'https://pngpix.com/images/hd/beet-green-juice-png-msr-7j10syxp1e47cuch.webp',
    price: 4.5,
    categoryId: '6',
  ),
  FoodItem(
    id: 'drink 4',
    name: 'Fresh Mango Juice',
    imgUrl: 'https://pngpix.com/images/hd/mango-juice-png-80-7opm5qnqifgepfm8.webp',
    price: 4,
    categoryId: '6',
  ),
  FoodItem(
    id: 'drink 5',
    name: 'Creamy Mango',
    imgUrl: 'https://pngpix.com/images/hd/mango-lassi-png-sak-7ko1rorm43q2rhqw.webp',
    price: 5.5,
    categoryId: '6',
  ),
];
