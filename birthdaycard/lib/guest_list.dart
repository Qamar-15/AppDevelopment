import 'package:flutter/material.dart';
import 'guest_model.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});
  @override
  State<ListViewWidget> createState() {
    return _ListViewWidget();
  }
}

class _ListViewWidget extends State<ListViewWidget> {
  List<Guest> guestList = [
    Guest(name: 'Alice', table: 'Table 1'),
    Guest(name: 'Bob', table: 'Table 2'),
    Guest(name: 'Charlie', table: 'Table 3'),
    Guest(name: 'Diana', table: 'Table 4'),
    Guest(name: 'Ethan', table: 'Table 5'),
    Guest(name: 'Fiona', table: 'Table 6'),
    Guest(name: 'George', table: 'Table 7'),
    Guest(name: 'Hannah', table: 'Table 8'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Guest List:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: guestList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.person),
                  title: Text(guestList[index].name),
                  subtitle: Text(guestList[index].table),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
