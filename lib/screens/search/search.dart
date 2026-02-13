import 'package:booking/screens/search/Attractions.dart';
import 'package:booking/screens/search/flights.dart';
import 'package:booking/screens/search/taxi.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool showTaxi = true;
  bool showAttraction = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Row(
            children: [
              TextButton.icon(
                onPressed: () => setState(() => showTaxi = true),
                icon: const Icon(Icons.local_taxi_outlined),
                label: const Text('Taxi'),
              ),
              const SizedBox(width: 8),
              TextButton.icon(
                onPressed: () => setState(() {
                  showTaxi = false;
                  showAttraction = true;
                }),
                icon: const Icon(Icons.attractions),
                label: const Text('Attractions'),
              ),
              TextButton.icon(
                onPressed: () => setState(() {
                  showAttraction = false;
                  showTaxi = false;
                }),
                icon: const Icon(Icons.airplanemode_active),
                label: const Text('Flight'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (showTaxi)
            Taxi()
          else if (showAttraction)
            Attractions()
          else
            Flight(),
        ],
      ),
    );
  }
}
