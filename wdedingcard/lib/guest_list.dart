import 'package:flutter/material.dart';
import 'package:wdedingcard/guest_model.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() {
    return _ListViewWidget();
  }
}

class _ListViewWidget extends State<ListViewWidget> {
  List<Guest> guests = [
    Guest(name: 'Alice', table: 'A1', numberOfGuests: 2),
    Guest(name: 'Bob', table: 'B2', numberOfGuests: 3),
    Guest(name: 'Charlie', table: 'C3', numberOfGuests: 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Guest List",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 253, 253),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: guests.length,
              itemBuilder: (context, index) {
                final guest = guests[index];
                return ListTile(
                  title: Text(
                    guest.name,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 7, 203, 238),
                    ),
                  ),
                  subtitle: Text(
                    'Table: ${guest.table}, Guests: ${guest.numberOfGuests}',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 7, 203, 238),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
