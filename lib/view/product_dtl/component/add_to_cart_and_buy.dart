import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/add_to_card_controller/add_to_cart_controller.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/selected_product_controller/selected_product_controller.dart';

import '../../../uitls/text/text.dart';

class add_to_cart_and_buy extends StatelessWidget {
  add_to_cart_and_buy({ required this.color , Key? key}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [

        Obx(
          () =>InkWell(
            onTap: (){
              if(addtocart_contoller.cart.value.contains(selected_product.product))
                {
                    print("alredy carted");
                }
              else
                {
                  addtocart_contoller.addtocart(selected_product.product);
                }

            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10.sp)),
              ),
              height: 40.h,
              width: 50.w,
              child: Icon(addtocart_contoller.cart.value.contains(selected_product.product) ?
                Icons.check :
                Icons.add_shopping_cart ,
                size: 24.spMin,),
            ),
          ),
        ),

        SizedBox(width:26.w,),

        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(20.sp)),
            ),
            height: 40.h,
            child: algeriya_text(Containt: "Buy Now" , fontsize: 22.spMin , fontcolor: Colors.white),
          ),
        )



      ],
    );
  }
}
