import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';

import '../model/ItemModel.dart';


// ye controle sra merejawochn handel madreg new
// ena esum class new   datawocgn   MASTEDADER     NEW   wana sraw
class ItemControle extends GetxController {
/*
step hidetu
    1>>>data meqebel alebet  (maletm data valu yemiqemetbetn model meqebel alebet)
    2>>> and fuction yinorewal  le dataw  value yemisetbet  return  yeleleew

    3>> lk controller sitera  qetat function run  madregiya  on init yasfelgewal  enezi nache wanawochu


 */
//step 1

  var itemList = <ItemModel>[].obs;

//step 3
  @override
  void onInit() {
    super.onInit();
    loadItems();
  }

//step 2  value melakiya new
  void loadItems(){
    itemList.value=[    //general array new be wustu degmo mnkefaflew be object new
//yihe object value meschia new smum ye modelu class sm new
      ItemModel(
          title: "mountain",
          desc: "this is the first african mountain",
          // image: "https://tse2.mm.bing.net/th/id/OIP.HqgFRddn8dVzuEvEtSnG6AHaEM?rs=1&pid=ImgDetMain&o=7&rm=3"
          // image: "data:image/jpeg;base64,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"
        image: 'assets/images/hotel1.jpg',
      ),
      ItemModel(
          title: "rastiyan",
          desc: "african peopel one",
          // image: "https://tse2.mm.bing.net/th/id/OIP.HqgFRddn8dVzuEvEtSnG6AHaEM?rs=1&pid=ImgDetMain&o=7&rm=3"
        image: 'assets/images/hotel1.jpg',
      ),
      ItemModel(
          title: "hayiqan",
          desc: "this is the first african mountain",
          image: 'assets/images/hotel1.jpg',
          // image: "https://tse2.mm.bing.net/th/id/OIP.HqgFRddn8dVzuEvEtSnG6AHaEM?rs=1&pid=ImgDetMain&o=7&rm=3"
      ),
      ItemModel(
          title: "Adis sefer",
          desc: "african peopel one",
        image: 'assets/images/hotel2.jpg',
      ),
      ItemModel(
          title: "sefereMender",
          desc: "this is the first african mountain",
        image: 'assets/images/hotel3.jpg',
      ),
      ItemModel(
          title: "rastiyan",
          desc: "african peopel one",
        image: 'assets/images/hotel0.jpg',
      ),
      ItemModel(
        title: "Adis sefer",
        desc: "african peopel one",
        image: 'assets/images/hotel2.jpg',
      ),
      ItemModel(
        title: "sefereMender",
        desc: "this is the first african mountain",
        image: 'assets/images/hotel3.jpg',
      ),
      ItemModel(
        title: "rastiyan",
        desc: "african peopel one",
        image: 'assets/images/hotel0.jpg',
      ),

    ];

  }
  void addBookmark(ItemModel item) {
    // if (!item.any((c) => c.id == item.id)) {
    //   bookmarks.add(company);
    //   saveBookmarks();
  }




}