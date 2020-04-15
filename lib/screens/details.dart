import 'package:flutter/material.dart';
import 'package:navigation_simple/models/assessment.dart';
import 'package:navigation_simple/models/form.dart';

class DetailsScreen extends StatefulWidget {
  final Assessment _data;

  DetailsScreen(this._data);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._data.member.shortName),
      ),
      body: ListView.separated(
        itemCount: criteria.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(criteria[index].title),
          subtitle: Text(criteria[index].description),
          trailing: DropdownButton<int>(
            value: widget._data.points[index],
            items: scales
                .map(
                  (scale) => DropdownMenuItem(
                    value: scale.value,
                    child: Text(scale.title),
                  ),
                )
                .toList(),
            onChanged: (newValue) =>
                setState(() => widget._data.points[index] = newValue),
          ),
        ),
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
        ),
      ),
    );
  }
}
