library string_2_icon;

import 'package:flutter/material.dart';
import './icon_list.dart' show iconDataMap;

/// Method to transform icon name to camel case
String _camelize(String text) {
  String newString = text.replaceAllMapped(RegExp(r'[-_\s.]+(.)?'),
      (Match match) => match.group(1)?.toUpperCase() ?? '');
  return newString.substring(0, 1).toLowerCase() + newString.substring(1);
}

/// Main class to transform a text to icon data
class String2Icon {
  /// Method to tranform a text to icon dat
  static IconData? getIconDataFromString(String iconName) {
    String iconNameTransformed = _camelize(iconName.replaceAll('mdi', ''));
    return iconDataMap[iconNameTransformed];
  }
}
