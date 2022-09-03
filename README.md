# String 2 Icons Flutter

This package convert a string to an IconData to get show its icon representation. Currently only working with Material Design Icons;

## Instalation
Include `string_2_icon` in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  string_2_icon: version
```

## Usage

To use this package, just import it into your file and enjoy it.

```dart
import 'package:string_2_icon/string_2_icon.dart';

...

Icon(String2Icon.getIconDataFromString('mdiAccountArrowDown'))
Icon(String2Icon.getIconDataFromString('account-details'), size: 48)
Icon(String2Icon.getIconDataFromString('account_key'), size: 48, color: Colors.blue,)
Icon(String2Icon.getIconDataFromString('alarm.panel'), color: Colors.red,)
...
```

The method `getIconDataFromString` can return an IconData or null. You can use dash (-), underscore(_), dot(.) or include mdi preffix on the icon string name;