import 'rating.dart';

class Mart {
  int id;
  String name;
  String address;
  String img;
  bool isFeatured;
  int noOfViews;
  List<Rating> ratings;

  Mart({
    required this.id,
    required this.name,
    required this.address,
    required this.img,
    required this.isFeatured,
    required this.noOfViews,
    required this.ratings,
  });

  factory Mart.fromJson(Map<String, dynamic> json) {
    List<Rating> ratings = [];
    if (json['ratings'] != null) {
      ratings = List<Rating>.from(json['ratings'].map((ratingJson) => Rating.fromJson(ratingJson)));
    }

    return Mart(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      img: json['img'] as String,
      isFeatured: json['isFeatured'] as bool,
      noOfViews: json['noOfViews'] as int,
      ratings: ratings,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'img': img,
      'isFeatured': isFeatured,
      'noOfViews': noOfViews,
      'ratings': ratings.map((Rating) => Rating.toMap()).toList(),
    };
  }
}
