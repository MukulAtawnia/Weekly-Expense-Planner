class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime dateTime;

  Transaction({
    required this.id,
    required this.amount,
    required this.title,
    required this.dateTime,
  });
}
