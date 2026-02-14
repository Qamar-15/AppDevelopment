import 'coffee_model.dart';
export 'coffee_model.dart';

final Map<String, List<CoffeeModel>> coffeeData = {
  'Cappuccino': [
    CoffeeModel(
      name: 'Cappuccino',
      subtitle: 'With Oat Milk',
      price: 4.20,
      rating: 4.5,
      imageUrl: 'assets/images/p1.jpg',
    ),
    CoffeeModel(
      name: 'Cappuccino',
      subtitle: 'With Chocolate',
      price: 3.14,
      rating: 4.2,
      imageUrl: 'assets/images/p2.jpg',
    ),
    CoffeeModel(
      name: 'Cappuccino',
      subtitle: 'With Caramel',
      price: 4.50,
      rating: 4.7,
      imageUrl: 'assets/images/p3.jpg',
    ),
  ],
  'Espresso': [
    CoffeeModel(
      name: 'Espresso',
      subtitle: 'Single Shot',
      price: 2.50,
      rating: 4.3,
      imageUrl: 'assets/images/p4.jpg',
    ),
    CoffeeModel(
      name: 'Espresso',
      subtitle: 'Double Shot',
      price: 3.00,
      rating: 4.6,
      imageUrl: 'assets/images/p5.jpg',
    ),
  ],
  'Latte': [
    CoffeeModel(
      name: 'Latte',
      subtitle: 'Vanilla Latte',
      price: 4.00,
      rating: 4.4,
      imageUrl: 'assets/images/p6.jpg',
    ),
    CoffeeModel(
      name: 'Latte',
      subtitle: 'Hazelnut Latte',
      price: 4.30,
      rating: 4.1,
      imageUrl: 'assets/images/p3.jpg',
    ),
  ],
  'Flat White': [
    CoffeeModel(
      name: 'Flat White',
      subtitle: 'Classic',
      price: 3.80,
      rating: 4.5,
      imageUrl: 'assets/images/p7.jpg',
    ),
    CoffeeModel(
      name: 'Flat White',
      subtitle: 'With Almond Milk',
      price: 4.10,
      rating: 4.3,
      imageUrl: 'assets/images/p8.jpg',
    ),
  ],
};

final List<String> coffeeCategories = coffeeData.keys.toList();
