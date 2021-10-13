

import 'package:json_annotation/json_annotation.dart';
part 'categories.g.dart';

@JsonSerializable()

class Categories{
  final int? id;
  final String? name;

  Categories({this.id, this.name});

  factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesToJson(this);

  @override
  List<Object> get props => [id!, name!];
}