import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:produc_list_and_product_dtl_ui/model/product_model.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/appbar/appbar.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/text/text.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_dtl/component/add_to_cart_and_buy.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_dtl/component/color_and_size.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_dtl/component/counter_and_fav.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_dtl/component/price_and_image.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/fav_product_controller/fav_product_controller.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/product_counter_controller/product_counter_controller.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/selected_product_controller/selected_product_controller.dart';

class product_dtl extends StatefulWidget {
  product_dtl({ required this.Product_model , Key? key}) : super(key: key);

  final product_model Product_model;

  @override
  State<product_dtl> createState() => _product_dtlState();
}

class _product_dtlState extends State<product_dtl> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    product_counter.counter.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appbar(
        title: "",
        color: Colors.white,
        appbarcolor: widget.Product_model.color,
        ctx: context,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: widget.Product_model.color,
        child: Stack(
              children: [

                //product detil design
                Container(
                  width: double.infinity,
                  height: height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50.0) , topLeft: Radius.circular(50.0)),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 270.h),
                  child: Padding(
                    padding : EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: Column(
                      children: [

                        SizedBox(height: 50.h,),

                        //color and size
                        color_and_size(size: widget.Product_model.size),

                        SizedBox(height: 30.h,),

                        //descriprion
                        Padding(
                          padding:  EdgeInsets.only(),
                          child: cario_text(Containt: widget.Product_model.description  , fontsize: 14.spMin),
                        ),

                        SizedBox(height: 20.h,),

                        //counter nd favorite button
                        counter_and_fav(),

                        SizedBox(height: 24.h,),

                        //add to cart and buy row
                       add_to_cart_and_buy(color: widget.Product_model.color),


                      ],
                    ),
                  ),
                ),


               //product title and image design
               Padding(
                 padding: EdgeInsets.only(left: 24.w),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [

                     //titles
                     cario_text(Containt: "Aristocratic Hand Bag" , fontsize: 18.spMin, fontcolor: Colors.white),
                     algeriya_text(Containt: widget.Product_model.title , fontsize: 36.spMin  , fontcolor: Colors.white),


                     //price and product image
                     price_and_image(id: widget.Product_model.id, price: widget.Product_model.price, image: widget.Product_model.image),

                   ],
                 ),
               ),

              ],
            ),
      ),
    );
  }
}
