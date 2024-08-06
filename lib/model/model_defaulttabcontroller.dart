import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ModelDefaulttabcontroller {
  const ModelDefaulttabcontroller(
      {required this.iconData, required this.title});
  final IconData iconData;
  final String title;
}

// ignore: non_constant_identifier_names
List<ModelDefaulttabcontroller> ModelDefaulttabcontrollers = const [
  ModelDefaulttabcontroller(iconData: FontAwesomeIcons.home, title: "Home"),
  ModelDefaulttabcontroller(iconData: FontAwesomeIcons.search, title: "Home"),
  ModelDefaulttabcontroller(iconData: FontAwesomeIcons.heart, title: "Home"),
  ModelDefaulttabcontroller(iconData: FontAwesomeIcons.user, title: "Home")
];
