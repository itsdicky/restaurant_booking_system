class Dish {
  String name;
  String description;
  int price;
  bool isFav;
  String imageURL;

  Dish({
    required this.name,
    required this.description,
    required this.price,
    required this.imageURL,
    required this.isFav
  });
}

var listDish = [
  Dish(
    name: 'Pancake',
    description: 'This is Pancake',
    price: 10000,
    imageURL: 'assets/images/pexels-ash-376464.jpg',
    isFav: false
  ),
  Dish(
    name: 'Burger',
    description: 'This is Pancake',
    price: 100,
    imageURL: 'assets/images/pexels-rajesh-tp-1633578.jpg',
    isFav: false
  ),
  Dish(
    name: 'Sandwich',
    description: 'This is Pancake',
    price: 100,
    imageURL: 'assets/images/pexels-daria-shevtsova-704569.jpg',
    isFav: false
  ),
  Dish(
    name: 'Fruit Salad',
    description: 'This is Pancake',
    price: 100,
    imageURL: 'assets/images/pexels-trang-doan-1099680.jpg',
    isFav: false
  ),
];