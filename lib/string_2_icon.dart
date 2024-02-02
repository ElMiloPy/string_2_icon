library string_2_icon;

import 'package:flutter/material.dart';
import './icon_list.dart' show iconDataMap;

/// Main class to transform a text to icon data
class String2Icon {
  /// Method to tranform a text to icon dat
  static const IconData? getIconDataFromString(String iconName) {
    return iconDataMap[iconName];
  }
}