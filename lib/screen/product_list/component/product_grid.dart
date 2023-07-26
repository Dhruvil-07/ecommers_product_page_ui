import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:produc_list_and_product_dtl_ui/get_screen_size.dart';
import 'package:produc_list_and_product_dtl_ui/product_data/product_data.dart';
import 'package:produc_list_and_product_dtl_ui/screen/product_list/component/iteam_show_card.dart';

class product_grid extends StatelessWidget {
  const product_grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool screen_size = get_screen_size(context);

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: screen_size ?  2 : 3,
        crossAxisSpacing: screen_size ? 24.w : 16.w,
        mainAxisSpacing: screen_size ? 24.h : 18.h,
        childAspectRatio: screen_size  ?
        (1/2).h :
        (1/2.5).w,
      ),
      itemCount: product_data.length,
      itemBuilder: (context, index)
      {
        return iteam_show_card(
          product: product_data[index],
        );
      },
    );
  }
}
