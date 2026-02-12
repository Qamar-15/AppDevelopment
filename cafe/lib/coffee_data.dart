import 'coffee_model.dart';

class CoffeeData {
  // List of all categories
  static const List<String> categories = [
    "Cappuccino",
    "Espresso",
    "Latte",
    "Flat",
  ];

  // List of all coffee items
  static const List<Coffee> allCoffees = [
    // Cappuccino items
    Coffee(
      name: "Cappuccino",
      category: "Cappuccino",
      price: 4.20,
      image: "assets/cappuccino1.jpg",
      rating: 4.8,
    ),
    Coffee(
      name: "Cappuccino",
      category: "Cappuccino",
      price: 4.20,
      image: "assets/cappuccino2.jpg",
      rating: 4.8,
    ),
    // Espresso items
    Coffee(
      name: "Espresso",
      category: "Espresso",
      price: 3.50,
      image: "assets/espresso1.jpg",
      rating: 4.5,
    ),
    Coffee(
      name: "Espresso",
      category: "Espresso",
      price: 3.50,
      image: "assets/espresso2.jpg",
      rating: 4.5,
    ),
    // Latte items
    Coffee(
      name: "Latte",
      category: "Latte",
      price: 3.80,
      image: "assets/latte1.jpg",
      rating: 4.7,
    ),
    Coffee(
      name: "Latte",
      category: "Latte",
      price: 3.80,
      image: "assets/latte2.jpg",
      rating: 4.7,
    ),
    // Flat items
    Coffee(
      name: "Flat White",
      category: "Flat",
      price: 4.00,
      image: "assets/flat1.jpg",
      rating: 4.6,
    ),
    Coffee(
      name: "Flat White",
      category: "Flat",
      price: 4.00,
      image: "assets/flat2.jpg",
      rating: 4.6,
    ),
  ];

  // Function to get coffees by category
  static List<Coffee> getCoffeesByCategory(String category) {
    return allCoffees.where((coffee) => coffee.category == category).toList();
  }
}
