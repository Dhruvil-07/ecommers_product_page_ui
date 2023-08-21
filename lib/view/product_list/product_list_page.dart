import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/appbar/appbar.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/text/text.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_list/components/category_list_scroller.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_list/components/products_list.dart';


class product_list extends StatefulWidget {
  const product_list({Key? key}) : super(key: key);

  @override
  State<product_list> createState() => _product_listState();
}

class _product_listState extends State<product_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(appbarcolor: Colors.white , color: Colors.black , title: ""),

      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //Titel text
              Padding(
                padding: EdgeInsets.only(left: 20.sp , top: 10.sp),
                  child: cario_text(Containt: "Women" , fontsize: 25.0,)
              ),

              //category choice slider
              category_scroller(),

              //product_list
              products_list(),


            ],
          ),
        )
      ),
    );
  }
}
