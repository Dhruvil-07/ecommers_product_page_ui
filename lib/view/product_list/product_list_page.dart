import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/appbar/appbar.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/text/text.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_list/components/category_list_scroller.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_list/components/products_list.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/product_list_controller/product_list_cotnroller.dart';


class product_list extends StatefulWidget {
  const product_list({Key? key}) : super(key: key);

  @override
  State<product_list> createState() => _product_listState();
}

class _product_listState extends State<product_list> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    product_list_controller.select_category(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(appbarcolor: Colors.white , color: Colors.black , title: ""  ,ctx: context),

      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //Titel text
              Padding(
                padding: EdgeInsets.only(left: 20.w , top: 4.h),
                  child: cario_text(Containt: "Women" , fontsize: 25.0,)
              ),

              //category choice slider
              category_scroller(),

              SizedBox(height: 8.h,),

              //product_list
              products_list(),


            ],
          ),
        )
      ),
    );
  }
}
