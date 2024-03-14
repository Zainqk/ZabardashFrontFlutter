class Vendor {
  String username;
  String email;
  String password;
  int id;
  String userType;

  Vendor({
    required this.username,
    required this.email,
    required this.password,
    required this.id,
    required this.userType,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) {
    return Vendor(
      username: json['username'],
      email: json['email'],
      password: json['password'],
      id: json['id'],
      userType: json['userType'],
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['id'] = this.id;
    data['userType'] = this.userType;
    return data;
  }
}
