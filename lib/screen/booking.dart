import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("book your ticket now")),
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TableCalendar(
            locale: "en_US",
            rowHeight: 43,
            headerStyle: const HeaderStyle(
                formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            onDaySelected: _onDaySelected,
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(Icons.train),
              title: const Text("Your Ticket"),
              subtitle:
                  Text("Selected Day = ${today.toString().split(" ")[0]}"),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  // Action when the arrow button is pressed
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
