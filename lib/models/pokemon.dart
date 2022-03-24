import 'package:flutter/material.dart';

class Pokemon {
  String _name;
  String _url;
  Color color;

  Pokemon(
    this._name,
    this._url,
    {this.color = Colors.grey}
  );

  String get url => _url;
  String get name => _name;
}