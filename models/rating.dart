class Rating {
  int id;
  int customerId;
  int martId;
  int numberOfRating;
  String comment;

  Rating({
    required this.id,
    required this.customerId,
    required this.martId,
    required this.numberOfRating,
    required this.comment,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    id: json['id'],
    customerId: json['customer_id'],
    martId: json['mart_id'],
    numberOfRating: json['no_of_rating'],
    comment: json['comment'],
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'customer_id': customerId,
    'mart_id': martId,
    'no_of_rating': numberOfRating,
    'comment': comment,
  };

}
