import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:produc_list_and_product_dtl_ui/product_data/product_data.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_dtl/product_dtl.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_list/components/product_card.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/product_list_controller/product_list_cotnroller.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/selected_product_controller/selected_product_controller.dart';

class products_list extends StatefulWidget {
  const products_list({Key? key}) : super(key: key);

  @override
  State<products_list> createState() => _products_listState();
}

class _products_listState extends State<products_list> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1/1.5,
            ),
            itemCount: product_list_controller.product.length,
            itemBuilder: (context, index){
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 4.h,
                ),
                child: GestureDetector(
                  onTap: (){
                    selected_product.product = product_list_controller.product[index];
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> product_dtl(Product_model: selected_product.product!,)));
                  },
                  child: Hero(
                    tag: product_list_controller.product[index].id,
                      child: product_card(Product_model: product_list_controller.product[index],)
                  ),
                )
              );
            },
        ),
      ),
    );
  }
}
