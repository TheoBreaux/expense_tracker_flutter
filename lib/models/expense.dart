import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

enum Category {
  groceries,
  housing,
  insurance,
  debt,
  utilities,
  clothing,
  entertainment,
  bills,
  transportation,
  food,
  travel,
  work,
}

const categoryIcons = {
  Category.clothing: Icons.shopping_basket,
  Category.housing: Icons.home,
  Category.insurance: Icons.local_hospital,
  Category.debt: Icons.account_balance,
  Category.work: Icons.work,
  Category.travel: Icons.flight,
  Category.utilities: Icons.electric_moped,
  Category.entertainment: Icons.movie,
  Category.bills: Icons.receipt,
  Category.transportation: Icons.directions_bus,
  Category.food: Icons.fastfood,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
