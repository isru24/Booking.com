import 'package:booking/controller/itemController.dart';
import 'package:booking/model/ItemModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';


import 'BookingPage.dart';
class Ditaldiscription extends StatelessWidget {

   Ditaldiscription({super.key, required this.item,});
  final ItemControle controlerr = Get.put(ItemControle());
  final ItemModel item;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(item.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children:<Widget> [
            Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                item.image,
                  height: 200,
                  width: double.infinity,
                )

            ),
            const SizedBox(height: 12,),
           
                Text('tes description ',style: TextStyle(fontSize: 20),),
                Text('tes description '),
                Text('tes description '),
                Text('tes description '),
                Text('tes description '),
                Text('tes description '),

           
          
          
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Get.to(()=>BookingPage(title:item.title,image:item.image));

            },
            child: const Text("BookMarke"),
          ),
        ),
      ),
    );
  }
}
