import 'package:parse_server_sdk/parse_server_sdk.dart';

class UserModel {
  String? id;
  String? name;
  bool? suspeito;
  String? username;
  String? email;

  UserModel(this.id, this.name, this.email, this.suspeito, this.username);

  UserModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.suspeito = json['suspeito'];
    this.username = json['username'];
    this.email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }

  UserModel.fromParse(ParseObject parseObject) {
    this.id = parseObject.objectId;
    this.name = parseObject['name'];
    this.suspeito = parseObject['suspeito'];
    this.username = parseObject['username'];
    this.email = parseObject['email'];
  }
}
