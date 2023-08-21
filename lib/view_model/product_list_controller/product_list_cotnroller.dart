import 'package:flutter/material.dart';
import 'package:get/get.dart';


Product_list_controller product_list_controller = Get.put(Product_list_controller());


class Product_list_controller extends GetxController
{
  List<String> product_category = ["Hand Bag" , "Jwellary" , "Footwear" , "Dress" , "Sari"];

  RxInt current_index = 0.obs;
  void select_category(int index){
    current_index.value = index;
  }
}