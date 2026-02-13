import 'package:booking/screens/booking/Active.dart';
import 'package:booking/screens/booking/canceled.dart';
import 'package:booking/screens/booking/past.dart';
import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  bool showActive = true;
  bool showPast = true;
  bool showCanceled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Booking')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Row(
            children: [
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    showActive = true;
                    showPast = false;
                  });
                },
                label: const Text('Active'),
              ),
              const SizedBox(width: 8),
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    showActive = false;
                    showPast = true;
                  });
                },
                label: const Text('past'),
              ),
              const SizedBox(width: 8),
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    showActive = false;
                    showCanceled = true;
                    showPast = false;
                  });
                },
                label: const Text('canceled'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (showActive) Active() else if (showPast) Past() else Canceled(),
        ],
      ),
    );
  }
}
