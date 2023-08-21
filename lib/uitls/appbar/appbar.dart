import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

PreferredSizeWidget appbar({required String title , required Color color, required Color appbarcolor} ) {
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
        onPressed: (){},
        icon: Icon(Icons.shopping_cart, color: color, size : 20.spMin),
      ),

    ],
  );
}