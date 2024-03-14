import 'category.dart';

class Product {
  int id;
  String name;
  String img;
  bool isFeatured;
  String status;
  String subtitle;
  String description;
  Category category;
  double price;
  Quantity quantity;

  Product({
    required this.id,
    required this.name,
    required this.img,
    required this.isFeatured,
    required this.status,
    required this.subtitle,
    required this.description,
    required this.category,
    required this.price,
    required this.quantity,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'],
    name: json['name'],
    img: json['img'],
    isFeatured: json['isFeatured'],
    status: json['status'],
    subtitle: json['subtitle'],
    description: json['description'],
    category: Category.fromJson(json['category']),
    price: json['price'].toDouble(),
    quantity: Quantity.fromJson(json['quantity']),
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'img': img,
    'isFeatured': isFeatured,
    'status': status,
    'subtitle': subtitle,
    'description': description,
    'category': category.toMap(),
    'price': price,
    'quantity': quantity.toMap(),
  };


}

class Quantity {
  int id;
  int quantity;
  DateTime created;

  Quantity({
    required this.id,
    required this.quantity,
    required this.created,
  });

  factory Quantity.fromJson(Map<String, dynamic> json) => Quantity(
    id: json['id'],
    quantity: json['quantity'],
    created: DateTime.parse(json['created']),
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'quantity': quantity,
    'created': created.toIso8601String(),
  };


}
