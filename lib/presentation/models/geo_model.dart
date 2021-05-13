import 'package:equatable/equatable.dart';

class  GeoModel extends Equatable {
  String lat;
  String lng;
  GeoModel({
    this.lat,
    this.lng
});

  @override
  List<Object> get props => [lat, lng];


  factory GeoModel.fromJson(Map<String, dynamic> json){
    return GeoModel(
      lat: json["lat"],
      lng: json["lng"]
    );
  }
}