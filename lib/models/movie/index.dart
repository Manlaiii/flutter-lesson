import 'package:json_annotation/json_annotation.dart';

part 'index.g.dart';

@JsonSerializable()
class MovieModel {
  int id;
  String imgUrl;
  int? publishedYear, durationMin;
  String? type, description;

  MovieModel(
      {required this.id,
      required this.imgUrl,
      this.publishedYear,
      this.durationMin,
      this.type,
      this.description});

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
