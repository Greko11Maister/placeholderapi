import 'package:equatable/equatable.dart';

class CompanyModel extends Equatable {
  String name;
  String catchPhrase;
  String bs;

  CompanyModel({this.name, this.catchPhrase, this.bs});

  @override
  List<Object> get props => [this.name, this.catchPhrase, this.bs];

  factory  CompanyModel.fromJson(Map<String, dynamic> json){
    return CompanyModel(
      name: json["name"],
      catchPhrase: json["catchPhrase"],
      bs: json["bs"]
    );
  }
}
