import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'category.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie extends Equatable{
  const Movie({
    this.id,
    this.userId,
    this.name,
    this.category,
  });
  final int? id;
  final int? userId;
  final String? name;
  final Category? category;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);

  @override
  List<Object?> get props => [
    id,
    userId,
    name,
    category,
  ];

  @override
  bool get stringify => true;
}