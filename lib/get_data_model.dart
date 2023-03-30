// To parse this JSON data, do
//
//     final getDataModel = getDataModelFromJson(jsonString);

import 'dart:convert';

GetDataModel getDataModelFromJson(String str) => GetDataModel.fromJson(json.decode(str));

String getDataModelToJson(GetDataModel data) => json.encode(data.toJson());

class GetDataModel {
  GetDataModel({
    required this.email,
    required this.companiesList,
  });

  String email;
  List<CompaniesList> companiesList;

  factory GetDataModel.fromJson(Map<String, dynamic> json) => GetDataModel(
    email: json["email"],
    companiesList: List<CompaniesList>.from(json["companiesList"].map((x) => CompaniesList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "companiesList": List<dynamic>.from(companiesList.map((x) => x.toJson())),
  };
}

class CompaniesList {
  CompaniesList({
    required this.name,
  });

  String name;

  factory CompaniesList.fromJson(Map<String, dynamic> json) => CompaniesList(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}
