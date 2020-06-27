import 'package:flutter/material.dart';

class Style {
  static TextStyle body({double zoom = 1}) {
    return TextStyle(
      fontSize: 12 * zoom,
    );
  }
  static TextStyle header({double zoom = 1}) {
    return TextStyle(
      fontSize: 55 * zoom,
      fontWeight: FontWeight.bold
    );
  }
  static TextStyle description({double zoom = 1}) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle footer({double zoom = 1}) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }
}
