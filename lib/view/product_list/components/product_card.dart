import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:produc_list_and_product_dtl_ui/model/product_model.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/text/text.dart';

class product_card extends StatelessWidget {

  product_model Product_model;

  product_card({ required this.Product_model , Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Expanded(
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Container(
              color: Product_model.color,
              child:  Padding(
                padding: EdgeInsets.all(16.0),
                  child: Image.asset(Product_model.image)
              ),
            ),
          ),
        ),
        
        SizedBox(height: 4.h,),
        
        Padding(
          padding: EdgeInsets.only(left: 4.w),
            child: cario_text(Containt: Product_model.title , fontsize: 16.spMin,)
        ),

        Padding(
          padding: EdgeInsets.only(left: 4.w),
            child: cario_text(Containt: "\$${Product_model.price}" , fontsize: 16.spMin,)
        ),




      ],
    );
  }
}
