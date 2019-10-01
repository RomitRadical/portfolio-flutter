import 'package:flutter/material.dart';
import 'package:portfolio/screens/display.dart';
import 'package:portfolio/screens/editing.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => Display(), '/editing': (context) => Editing()},
    ));
