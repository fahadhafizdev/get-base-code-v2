class UserModel {
  int? id;
  String? name;
  String? username;
  String? phone;
  String? role;
  var saldo;
  String? createdAt;
  String? updatedAt;
  var deletedAt;

  UserModel(
      {this.id,
      this.name,
      this.username,
      this.phone,
      this.role,
      this.saldo,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    phone = json['phone'];
    role = json['role'];
    saldo = json['saldo'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    deletedAt = json['deletedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['phone'] = phone;
    data['role'] = role;
    data['saldo'] = saldo;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['deletedAt'] = deletedAt;
    return data;
  }
}
