import 'package:flutter/material.dart';

class User {
  final String bio;
  final String username;
  final String fullname;
  final String followers;
  final String categoryName;
  final bool isAccountVeriefied;
  final String profilePictureUrl;

  User({
    @required this.bio,
    @required this.username,
    @required this.fullname,
    @required this.followers,
    @required this.profilePictureUrl,
    @required this.categoryName,
    @required this.isAccountVeriefied,
  });
}
