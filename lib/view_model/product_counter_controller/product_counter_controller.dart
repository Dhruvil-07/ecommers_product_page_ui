import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

Product_counter product_counter = Get.put(Product_counter());

class Product_counter extends GetxController
{
   RxInt counter = 0.obs;

   //pluse product
   void pluse()
   {
    counter.value++;
    print(counter.value);
   }

   //minus product
   void minus()
   {
      if(counter.value <= 0)
        {
           counter.value = 0;
        }
      else
        {
           counter.value--;
        }
   }

}