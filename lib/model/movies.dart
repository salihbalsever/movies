import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movies.g.dart';

part 'category.g.dart';

@JsonSerializable()
class Movies {
  int? id;
  int? userid;
  String? name;
  Category? category;

  Movies({this.id, this.name, this.userid, this.category});

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesToJson(this);

  @override
  List<Object> get props => [id!, userid!, name!, category!];
}

class Category {
  int? id;
  String? name;

  Category({this.id, this.name});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  List<Object> get props => [id!, name!];
}
