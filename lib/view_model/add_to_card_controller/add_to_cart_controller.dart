import 'package:get/get.dart';
import 'package:produc_list_and_product_dtl_ui/model/product_model.dart';


Addtocart_contoller addtocart_contoller = Get.put(Addtocart_contoller());


class Addtocart_contoller extends GetxController
{
    RxList<product_model> cart = <product_model>[].obs;
    RxBool carted = false.obs;

    void addtocart(var prd)
    {
       cart.add(prd);
       print(cart.length);
    }


    void removefromcard(int index)
    {
       cart.removeAt(index);
       print(cart.length);
    }
}