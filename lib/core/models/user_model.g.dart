// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserM _$UserMFromJson(Map<String, dynamic> json) => UserM(
  uid: json['uid'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  loginMethod: json['login_method'] as String?,
  photoUrl: json['photo_url'] as String?,
);

Map<String, dynamic> _$UserMToJson(UserM instance) => <String, dynamic>{
  'uid': instance.uid,
  'name': instance.name,
  'email': instance.email,
  'login_method': instance.loginMethod,
  'photo_url': instance.photoUrl,
};
