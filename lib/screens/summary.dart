import 'package:flutter/material.dart';

import 'package:navigation_simple/models/group_member.dart';
import 'details.dart';

class SummaryScreen extends StatefulWidget {
  final GroupMember _evaluator;
  final List _data;

  SummaryScreen(this._evaluator, this._data);

  @override
  _SummaryScreenState createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  void _navigate(assessment) async {
    final returnData = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(assessment),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            const Text(
              'Peer and Self Assessement by',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              widget._evaluator.fullName,
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      body: ListView.separated(
        itemCount: widget._data.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(widget._data[index].member.shortName),
          subtitle: Text(widget._data[index].member.fullName),
          trailing: CircleAvatar(
            child: Text(
              widget._data[index].percent.round().toString(),
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor:
                widget._data[index].percent < 50 ? Colors.red : Colors.green,
          ),
          onTap: () => _navigate(widget._data[index]),
        ),
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
        ),
      ),
    );
  }
}
