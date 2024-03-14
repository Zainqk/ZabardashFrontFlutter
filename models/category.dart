class Category {
  int id;
  String name;
  String description;
  DateTime created;

  Category({
    required this.id,
    required this.name,
    required this.description,
    required this.created,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json['id'],
    name: json['name'],
    description: json['description'],
    created: DateTime.parse(json['created']),
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'description': description,
    'created': created.toIso8601String(),
  };
}
