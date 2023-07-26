import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:produc_list_and_product_dtl_ui/model/product_model.dart';
import 'package:produc_list_and_product_dtl_ui/reusable_widget/text.dart';
import 'package:produc_list_and_product_dtl_ui/screen/product_detail/product_detail.dart';


class iteam_show_card extends StatelessWidget {
  const iteam_show_card({
    required this.product,
    Key? key}) : super(key: key);

  final product_model product;

  @override
  Widget build(BuildContext context) {

    bool size = MediaQuery.of(context).size.width < 480;

    return InkWell(
      onTap: (){
         Navigator.push(context, 
             MaterialPageRoute(builder: (context) => 
               product_detail(product_dtl: product)
               ),
         );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            //product image
            Expanded(
              child: Hero(
                tag: product.id,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    color: product.color,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all( size ?  8.sp : 6.sp) ,
                    child: Image.asset(product.image),
                  ),
                ),
              ),
            ),

            //product title and price
            cario_text(containt: product.title , fontsize: size ? 15.sp : 10.sp, fontcolor: Colors.grey),
            cario_text(containt: "\$ ${product.price}" , fontsize: size ? 12.sp : 8.sp,)


          ],
        )
    );
  }
}
