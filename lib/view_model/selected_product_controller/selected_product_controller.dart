import 'package:get/get.dart';
import 'package:produc_list_and_product_dtl_ui/model/product_model.dart';

Selected_product selected_product = Get.put(Selected_product());

class Selected_product extends GetxController
{
   product_model? product;
}