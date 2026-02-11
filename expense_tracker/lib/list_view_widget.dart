import 'package:flutter/material.dart';

import 'expense_model.dart';

class CounterWidget extends StatefulWidget {
  @override
  State<CounterWidget> createState() {
    return _CounterWidget();
  }
}

class _CounterWidget extends State<CounterWidget> {
  double no = 0;
  DateTime? _selected_date = null;

  void _opendatepicker() async {
    DateTime? today = DateTime.now();
    var pickeddate = await showDatePicker(
      context: context,
      firstDate: DateTime(today.year, today.month - 1, today.day),
      lastDate: today,
      initialDate: today,
    );

    setState(() {
      _selected_date = pickeddate;
    });
  }

  //List<String> listofexpenses = ["coat","grocery","dinner"];
  List<Expense> listofexpenses = [
    Expense(
      amount: 1500,
      date: DateTime.now(),
      category: "Food",
      title: "treat",
    ),
    Expense(
      amount: 5500,
      date: DateTime.now(),
      category: "Clothes",
      title: "sweater",
    ),
  ];
  void _increment() {
    setState(() {
      no++;
    });
  }

  void _addItemToList() {
    setState(() {
      listofexpenses.add(
        Expense(
          amount: 5500,
          date: DateTime.now(),
          category: "Clothes",
          title: "sweater",
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Text("Count: ${no}"),
          ElevatedButton(onPressed: _increment, child: Text("+")),
          Container(
            color: Colors.green,
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Name"),
                    prefixIcon: Icon(Icons.title),
                    prefixText: "Enter Your Name",
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Amount"),
                    prefixIcon: Icon(Icons.attach_money),
                    prefixText: "Enter Amount",
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Text("${_selected_date}"),
                      IconButton(
                        onPressed: _opendatepicker,
                        icon: Icon(Icons.calendar_month_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listofexpenses.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Text(listofexpenses[index].title),
                      Text(listofexpenses[index].category),
                      Text(listofexpenses[index].date.toString()),
                      Text(listofexpenses[index].amount.toString()),
                    ],
                  ),
                );
              },
            ),
          ),
          TextButton(onPressed: _addItemToList, child: Text("Add Item")),
        ],
      ),
    );
  }
}
