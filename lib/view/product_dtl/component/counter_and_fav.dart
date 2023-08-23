import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/fav_product_controller/fav_product_controller.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/product_counter_controller/product_counter_controller.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/selected_product_controller/selected_product_controller.dart';
import '../../../uitls/text/text.dart';

class counter_and_fav extends StatelessWidget {
  const counter_and_fav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        //counter row
        Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //minus button
                InkWell(
                  onTap: (){
                    product_counter.minus();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4.sp)),
                        border: Border.all(color: Colors.black)
                    ),
                    height: 30.h,
                    width: 30.w,
                    child: Icon(Icons.exposure_minus_1),
                  ),
                ),

                Obx(
                  () => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4.sp)),
                        border: Border.all(color: Colors.black)
                    ),
                    height: 30.h,
                    width: 30.w,
                    child: Center(child: cario_text(Containt: product_counter.counter.toString(), fontsize: 16.spMin,)),
                  ),
                ),


                InkWell(
                  onTap: (){
                    product_counter.pluse();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4.sp)),
                        border: Border.all(color: Colors.black)
                    ),
                    height: 30.h,
                    width: 30.w,
                    child: Icon(Icons.exposure_plus_1),
                  ),
                ),

              ],
            )
        ),


        //favorite button
        Expanded(
            child:Align(
              alignment: Alignment.centerRight,
              child: Obx(
                () => IconButton(
                  icon: Icon( Icons.favorite , size: 28.spMin , color: 
                  fav_product_controller.fav_product_list.value.contains(selected_product.product) ? Colors.red : Colors.grey),
                  onPressed: (){
                    if(fav_product_controller.fav_product_list.value.contains(selected_product.product))
                      {
                          fav_product_controller.removefromfav(selected_product.product);
                      }
                    else
                      {
                         fav_product_controller.addtofav(selected_product.product);
                      }
                  },
                ),
              ),
            )
        )

      ],
    );
  }
}
