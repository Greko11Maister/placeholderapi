import 'package:equatable/equatable.dart';

import 'geo_model.dart';

class AddressModel extends Equatable {

  String street;
  String suite;
  String city;
  String zipcode;
  GeoModel geo;

  AddressModel({this.street, this.suite, this.city, this.zipcode, this.geo});

  @override
  List<Object> get props => [this.street, this.suite, this.city, this.zipcode, this.geo];

  factory AddressModel.fromJson(Map<String, dynamic> json){
    return AddressModel(
      street: json["street"],
      suite: json["suite"],
      city: json["city"],
      zipcode: json["zipcode"],
      geo: GeoModel.fromJson(json["geo"])
    );
  }
}
