import 'package:booking/controller/FavoritesController.dart';
import 'package:booking/controller/home_controller.dart';
import 'package:booking/screens/search/favoright.dart';
import 'package:booking/screens/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


import '../provider/favorite_provider.dart';
import 'Appbar.dart';


class HomePage extends StatelessWidget { // Changed to StatelessWidget
  HomePage({super.key});

  final HomeController controller = Get.put(HomeController());
  final FavoritesController favoritesController = Get.put(FavoritesController());
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);



  final List<Widget> pages = [
    SearchPage(imageUrl: 'https://tse2.mm.bing.net/th/id/OIP.HqgFRddn8dVzuEvEtSnG6AHaEM?rs=1&pid=ImgDetMain&o=7&rm=3'),
    Favoright(),
    const Center(child: Text('Bookings Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Sign In Page', style: TextStyle(fontSize: 24))),
  ];


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final words = provider.words;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text(
          'Booking.com',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),


      body: SafeArea(
        //only body
        child: Obx(() => pages[controller.selectedIndex.value]),

      ),




      );
    // );
  }
}