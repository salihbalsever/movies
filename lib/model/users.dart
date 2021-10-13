
import 'package:json_converter/json_converter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';

part 'users.g.dart';
@JsonSerializable()

 class Users {
  final int? id;
  final String? userName;
  final String? password;

  Users({this.id, this.password, this.userName});
  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);

  @override
  List<Object> get props => [id!, userName!, password!];

}