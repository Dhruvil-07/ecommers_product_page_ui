import 'package:get/get.dart';
import 'package:produc_list_and_product_dtl_ui/model/product_model.dart';


Fav_product_controller fav_product_controller = Get.put(Fav_product_controller());

class Fav_product_controller extends GetxController
{
   RxBool isfav = false.obs;
   RxList<product_model> fav_product_list = <product_model>[].obs;

   //add to favourite
   void addtofav(var prd)
   {
      fav_product_list.add(prd);
      print(fav_product_list.length);
   }


   //remove from favorite
   void removefromfav(var prd)
   {
    fav_product_list.remove(prd);
    print(fav_product_list.length);
   }


}
