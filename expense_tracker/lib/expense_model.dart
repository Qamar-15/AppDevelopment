class Expense {
  Expense({
    required this.amount,
    required this.date,
    required this.category,
    required this.title,
  });
  final String title;
  final double amount;
  final String category;
  final DateTime date;
}
