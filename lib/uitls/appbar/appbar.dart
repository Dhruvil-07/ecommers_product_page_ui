import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:produc_list_and_product_dtl_ui/view/cart/cart.dart';

PreferredSizeWidget appbar({required String title , required Color color, required Color appbarcolor  , required BuildContext ctx} ) {
  return AppBar(
    backgroundColor: appbarcolor,
    elevation: 0.0,
    centerTitle: true,
    leading: IconButton(
      onPressed: (){},
      icon: Icon(Icons.arrow_back , color: color, size : 20.spMin,),
    ),
    title: Text("${title}"),
    actions: [

      IconButton(
        onPressed: (){},
        icon: Icon(Icons.search_rounded , color: color, size : 25.spMin),
      ),

      IconButton(
        onPressed: (){
          Navigator.push(ctx, MaterialPageRoute(builder: (ctx)=>cart()));
        },
        icon: Icon(Icons.shopping_cart, color: color, size : 20.spMin),
      ),

    ],
  );
}