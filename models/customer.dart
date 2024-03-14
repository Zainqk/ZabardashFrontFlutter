class Customer {
  final int id;
  final String username;
  final String email;
  final String password;
  final String userType;

  Customer({required this.id, required this.username, required this.email, required this.password, required this.userType});

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      userType: json['userType'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
      'userType': userType,
    };
  }
}