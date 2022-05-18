This package is uses to make a fade animation to your widget easily.

## Usage :
To use this plugin, add `fading_widget_package` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

## Example

``` dart
import 'package:flutter/material.dart';
import 'package:test_widgets/fading_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fading Animation Example',
      home: Scaffold(
        body: Center(
          child: FadingAnimation(
            duration: 3,
            child: Icon(
              Icons.favorite,
              size: 100,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

```

## Parameters
- duration : this parameter takes a integer number of seconds that widget take to show the default
  is 1 second.
- child : takes an Widget type that contains your widget.

## Screenshot

<img src="https://media1.tenor.com/images/753ef466b4bba11e7c844887a30045ee/tenor.gif" >