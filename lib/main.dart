import 'package:booking/main_screen.dart';
import 'package:booking/screens/provider/favorite_provider.dart';
import 'package:booking/screens/screen/home_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  DevicePreview(enabled: !kReleaseMode, builder: (context) => MyApp()),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
       create: (context)=>FavoriteProvider(),
      child: GetMaterialApp(
        title: 'Booking',
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home:  MainScreen(),
      ),
    );
  }
}
