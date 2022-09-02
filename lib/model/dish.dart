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
    price: 20000,
    imageURL: 'assets/images/pexels-ash-376464.jpg',
    isFav: false
  ),
  Dish(
    name: 'Burger',
    description: 'This is Burger',
    price: 25000,
    imageURL: 'assets/images/pexels-rajesh-tp-1633578.jpg',
    isFav: false
  ),
  Dish(
    name: 'Sandwich',
    description: 'This is Sandwich',
    price: 14000,
    imageURL: 'assets/images/pexels-daria-shevtsova-704569.jpg',
    isFav: false
  ),
  Dish(
    name: 'Fruit Salad',
    description: 'This is Fruit salad',
    price: 16000,
    imageURL: 'assets/images/pexels-trang-doan-1099680.jpg',
    isFav: false
  ),
  Dish(
      name: 'Steak',
      description: 'This is Steak',
      price: 55000,
      imageURL: 'assets/images/pexels-dana-tentis-262959.jpg',
      isFav: false
  ),
  Dish(
      name: 'Cake',
      description: 'This is Cake',
      price: 24000,
      imageURL: 'assets/images/pexels-elli-1854652.jpg',
      isFav: false
  ),
  Dish(
      name: 'Pasta',
      description: 'This is Pasta',
      price: 22000,
      imageURL: 'assets/images/pexels-eneida-nieves-803963.jpg',
      isFav: false
  ),
  Dish(
      name: 'Noodle',
      description: 'This is Noodle',
      price: 22000,
      imageURL: 'assets/images/pexels-lisa-fotios-1279330.jpg',
      isFav: false
  ),
  Dish(
      name: 'Kebab',
      description: 'This is Kebab',
      price: 18000,
      imageURL: 'assets/images/pexels-pixabay-461198.jpg',
      isFav: false
  ),
];