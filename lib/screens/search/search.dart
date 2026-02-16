import 'package:booking/controller/SearchController.dart';
import 'package:booking/screens/search/Attractions.dart';
import 'package:booking/screens/search/Stay.dart';
import 'package:booking/screens/search/carRental.dart';
import 'package:booking/screens/search/flights.dart';
import 'package:booking/screens/search/taxi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final controller = Get.put(Searchcontroller());

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
                onPressed: controller.showStays,
                icon: const Icon(Icons.local_taxi_outlined),
                label: const Text('Stay'),
              ),
              const SizedBox(width: 8),

              TextButton.icon(
                onPressed: controller.showCars,
                icon: const Icon(Icons.local_taxi_outlined),
                label: const Text('CarRental'),
              ),
              const SizedBox(width: 8),

              TextButton.icon(
                onPressed: controller.showTaxis,
                icon: const Icon(Icons.local_taxi_outlined),
                label: const Text('Taxi'),
              ),
              const SizedBox(width: 8),
              TextButton.icon(
                onPressed: controller.showAttractions,
                icon: const Icon(Icons.attractions),
                label: const Text('Attractions'),
              ),
              TextButton.icon(
                onPressed: controller.showFlights,
                icon: const Icon(Icons.airplanemode_active),
                label: const Text('Flight'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Obx(() {
            if (controller.showFlight.value) {
              return Flight();
            } else if (controller.showAttraction.value) {
              return Attractions();
            } else if(controller.showStay.value){
              return Stay();
            }else if(controller.showCar.value){
              // return Carrental(imageUrl: imageUrl);
              return Carrental();
            }
            
             else {
              return Taxi();
            }
          }),
        ],
      ),
    );
  }
}
