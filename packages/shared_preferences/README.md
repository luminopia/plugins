# Shared preferences plugin

[![pub package](https://img.shields.io/pub/v/shared_preferences.svg)](https://pub.dartlang.org/packages/shared_preferences)

Wraps NSUserDefaults (on iOS) and SharedPreferences (on Android), providing
a persistent store for simple data. Data is persisted to disk asynchronously.
Neither platform can guarantee that writes will be persisted to disk after
returning and this plugin must not be used for storing critical data.

## Usage
To use this plugin, add `shared_preferences` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

### Example

``` dart
import 'package:flutter_web/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
      child: RaisedButton(
        onPressed: _incrementCounter,
        child: Text('Increment Counter'),
        ),
      ),
    ),
  ));
}

_incrementCounter() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int counter = (prefs.getInt('counter') ?? 0) + 1;
  print('Pressed $counter times.');
  await prefs.setInt('counter', counter);
}
```

### Testing

You can populate `SharedPreferences` with initial values in your tests by running this code:

```dart
const MethodChannel('plugins.flutter.io/shared_preferences')
  .setMockMethodCallHandler((MethodCall methodCall) async {
    if (methodCall.method == 'getAll') {
      return <String, dynamic>{}; // set initial values here if desired
    }
    return null;
  });
```
