
import 'package:booking/controller/itemController.dart';
import 'package:booking/model/ItemModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:provider/provider.dart';


import '../provider/favorite_provider.dart';
class Favoright extends StatelessWidget {
  const Favoright({super.key});

  @override
  Widget build(BuildContext context) {
    // final words = nouns.take(50).toList();
    final ItemControle controlerr = Get.put(ItemControle());
    final ItemModel item;
    final provider = Provider.of<FavoriteProvider>(context);
    final words = provider.words;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
      title: Text('Sample you want '),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          final word = words[index];
          final item = controlerr.itemList[index];
          return ListTile(
            // leading: Image.network(item.image),
            title: Container(
              height: 100,
                width: double.infinity,
           
                child: ListTile(
                  onTap: (){
                    
                  },
                  leading: Image.network(item.image),
                  title: Text(word),
                  subtitle: Text("go to sem desctiption"),
                )),
            // subtitle: Text(item.desc),
            trailing: IconButton(
              onPressed: () {
                provider.toggleFavorite(word);
              },
              icon: provider.isExist(word)
                  ? const Icon(Icons.favorite,color: Colors.red,)
                  : const Icon(Icons.favorite_border),
              // icon: const Icon(Icons.favorite_border),
            ),
          );
        },
      ),
    );
  }
}
