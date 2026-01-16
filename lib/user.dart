import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  // Use JsonKey if you want the Dart variable name to different   from the JSON response
  // @JsonKey(name: "user_id")
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;
  User({this.id, this.name, this.email, this.gender, this.status});

  // i will use JsonSerializable to generate the from and to json functions
  // Users.fromJson(Map<String, dynamic> json) {
  //   id = json["id"];
  //   name = json["name"];
  //   email = json["email"];
  //   gender = json["gender"];
  //   status = json["status"];
  // }
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = Map<String, dynamic>();
  //   data["id"] = id;
  //   data["name"] = name;
  //   data["email"] = email;
  //   data["gender"] = gender;
  //   data["status"] = status;
  //   return data;
  // }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
