import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserM {
  @JsonKey(name: 'uid')
  final String? uid;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'login_method')
  final String? loginMethod;

  @JsonKey(name: 'photo_url')
  final String? photoUrl;

  UserM({
    required this.uid,
    required this.name,
    required this.email,
    required this.loginMethod,
    required this.photoUrl,
  });

  factory UserM.fromJson(Map<String, dynamic> json) => _$UserMFromJson(json);

  Map<String, dynamic> toJson() => _$UserMToJson(this);

  static UserM emptyUser = UserM(
    uid: '-1',
    name: null,
    email: null,
    loginMethod: null,
    photoUrl: null,
  );

  @override
  String toString() {
    return 'UserM{uid: $uid, name: $name, email: $email, loginMethod: $loginMethod, photoUrl: $photoUrl}';
  }

  UserM copyWith({
    String? uid,
    String? name,
    String? email,
    String? loginMethod,
    String? photoUrl,
  }) {
    return UserM(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      loginMethod: loginMethod ?? this.loginMethod,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }
}
