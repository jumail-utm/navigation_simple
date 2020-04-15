import 'package:flutter/material.dart';
import 'package:navigation_simple/models/mock_data.dart';
import 'package:navigation_simple/screens/summary.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'flutter_navigation_simple',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: SummaryScreen(mockData[0].member, mockData),
      ),
    );
