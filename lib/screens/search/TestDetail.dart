
import 'package:booking/controller/itemController.dart';
import 'package:booking/model/ItemModel.dart';
import 'package:booking/screens/search/detaildiscription.dart';
import 'package:booking/screens/search/favoright.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


import '../provider/favorite_provider.dart';



class TestDetail extends StatelessWidget {

  final words = nouns.take(50).toList();
  final ItemControle controlerr = Get.put(ItemControle());
  final ItemModel item;

  TestDetail({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final words = nouns.take(50).toList();
    final provider = Provider.of<FavoriteProvider>(context);
        
    return DefaultTabController(
      length:3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          foregroundColor: Colors.white,
          title:Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 13),
                  height: 50,
                  width: double.infinity,
                        
                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    decoration: BoxDecoration(
                   color: Colors.white,           // 👈 background color
                    borderRadius: BorderRadius.circular(8),
                         ),
                         child: ListTile(
                leading: IconButton(
                  onPressed: (){
                    Get.back();
                  }, icon:Icon(Icons.arrow_back)),
                  title:Text(item.title, style: const TextStyle(fontSize: 20,color: Colors.black,))
                ,
                         ),
                         
                  ),
            ],
          ),
      
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            
            child: Container(
              color: const Color.fromARGB(190, 238, 238, 238),
              child: TabBar(
              
                
                indicatorColor: Colors.white,
                onTap: (index) {
              if (index == 0) {
            
                showModalBottomSheet(
                  context: context,
                  builder: (_) => const SortSheet(),
                );}
               else if (index == 1)
               {
              
                showModalBottomSheet(
                  context: context,
                  builder: (_) => const FilterSheet(),
                );
              }
               else if (index == 2) {
              
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (_) => const MapSheet(),
                );
              }
                },





                
                tabs:[
                  
                  Tab(text: 'Sort'),
          
                  Tab(text: 'Filter',),
                  Tab(text: 'Map',)
                ]),
            ),
          ),
      
        ),
      
        body: ListView.builder(
          itemCount: words.length,
          itemBuilder: (context, index) {
            final word = words[index];
            return ListTile(
              onTap: (){
                Get.to(()=>Ditaldiscription(item: item,));
              },
              leading: Container(
                height: 250,
                // height: 150,
                //   width: 40,
                  child: Image.network(item.image ,height: 200,)),
      
              title: Text(word),
              subtitle: Text("sample",style: TextStyle(color: Colors.lightGreenAccent),),
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
        floatingActionButton: FloatingActionButton.extended(
      
            onPressed: (){
              final route = MaterialPageRoute(
                  builder: (context)=>const Favoright(),
              );
              // Get.to(()=>Favoright(context,route));
            Navigator.push(context,route);
            //   Get.to(()=>Favoright());
            },
          label: const Text('favorites'),
      
        ),
      ),
    );
  }
}

class SortSheet extends StatelessWidget {
  const SortSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 250,
      child: Center(child: Text("Sort Options")),
    );
  }
}

class MapSheet extends StatelessWidget {
  const MapSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Center(child: Text("Map Page")),
    );
  }
}

class FilterSheet extends StatelessWidget {
  const FilterSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Center(child: Text("FilterSheet")),
    );
  }
}

