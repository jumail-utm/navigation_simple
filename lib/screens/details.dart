import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Evaluated member short name'),
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          title: Text('Criterion ${index + 1}'),
          subtitle: Text('The description'),
          trailing: DropdownButton<int>(
            value: 2,
            items: [
              DropdownMenuItem(
                value: 1,
                child: Text('Poor'),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text('Good'),
              ),
            ],
            onChanged: (value) {},
          ),
        ),
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
        ),
      ),
    );
  }
}
