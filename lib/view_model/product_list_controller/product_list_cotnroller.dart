import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:produc_list_and_product_dtl_ui/model/product_model.dart';
import 'package:produc_list_and_product_dtl_ui/product_data/product_data.dart';


Product_list_controller product_list_controller = Get.put(Product_list_controller());


class Product_list_controller extends GetxController
{
  List<String> product_category = ["Hand Bag" , "Jwellary" , "Footwear" , "Dress" , "Sari"];

  RxList<product_model> product = product_data.obs;

  RxInt current_index = 0.obs;
  void select_category(int index){
    current_index.value = index;
    product.value = [];

     for(int i = 0 ; i < product_data.length ; i++)
       {
          if(product_data[i].category == product_category[index])
            {
               product.value.add(product_data[i]);
            }
       }
     print(product[0].category);
  }
}