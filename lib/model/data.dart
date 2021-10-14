import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:movies/model/category.dart';
import 'package:movies/model/user.dart';

import 'movie.dart';

part 'data.g.dart';

@JsonSerializable()
class Data extends Equatable{
  const Data({   this.users,
    this.categories,
    this.movies,});

  final List<User>? users;
  final List<Category>? categories;
  final List<Movie>? movies;



  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  List<Object?> get props => [users,
    categories,
    movies,];

  @override
  bool get stringify => true;
}