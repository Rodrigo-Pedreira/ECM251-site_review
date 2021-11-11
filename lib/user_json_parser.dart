class UserJSONParser {
  int? id;
  String? name;
  String? password;
  String? email;

  UserJSONParser({this.id, this.name, this.password, this.email});

  UserJSONParser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    password = json['password'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =<String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['password'] = password;
    data['email'] = email;
    return data;
  }
}
