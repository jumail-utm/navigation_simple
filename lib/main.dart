import 'package:flutter/material.dart';
import 'package:navigation_simple/screens/summary.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'flutter_navigation_simple',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: SummaryScreen(),
      ),
    );
