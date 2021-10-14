import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
 const User({
  this.id,
  this.username,
  this.password,
 });
 final int? id;
 final String? username;
 final String? password;

 factory User.fromJson(Map<String, dynamic> json) =>
     _$UserFromJson(json);
 Map<String, dynamic> toJson() => _$UserToJson(this);

 @override
 List<Object?> get props => [
  id,
  username,
  password
 ];

 @override
 bool get stringify => true;
}