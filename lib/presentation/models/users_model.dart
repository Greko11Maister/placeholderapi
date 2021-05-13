import 'package:equatable/equatable.dart';
import 'package:placeholderapi/presentation/models/company_model.dart';

import 'address_model.dart';

class UsersModel extends Equatable {

  int id;
  String name;
  String username;
  String email;
  AddressModel address;
  String phone;
  String website;
  CompanyModel company;

  UsersModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  @override
  List<Object> get props => [
        id,
        name,
        username,
        email,
        address,
        phone,
        website,
        company,
      ];

  factory UsersModel.fromJson(Map<String, dynamic> json){
    return UsersModel(
      id: json["id"],
      name: json["name"],
      username: json["username"],
      email: json["email"],
      address: AddressModel.fromJson(json["address"]),
      phone: json["phone"],
      website: json["website"],
      company: CompanyModel.fromJson(json["company"])
    );
  }
}
