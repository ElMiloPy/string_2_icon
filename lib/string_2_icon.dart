library string_2_icon;

import 'package:flutter/material.dart';
import './icon_list.dart' show iconDataMap;

String _camelize(String text) {
  String newString = text.replaceAllMapped(RegExp(r'[-_\s.]+(.)?'),
      (Match match) => match.group(1)?.toUpperCase() ?? '');
  return newString.substring(0, 1).toLowerCase() + newString.substring(1);
}

class String2Icon {
  static IconData? getIconDataFromString(String iconName) {
    String iconNameTransformed = _camelize(iconName.replaceAll('mdi', ''));
    return iconDataMap[iconNameTransformed];
  }
}
