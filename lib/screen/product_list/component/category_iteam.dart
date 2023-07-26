import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:produc_list_and_product_dtl_ui/get_screen_size.dart';
import 'package:produc_list_and_product_dtl_ui/reusable_widget/text.dart';


class category_iteam extends StatelessWidget {
  category_iteam({
    required this.backgroundcolor,
    required this.category_name ,
    required this.index,
    required this.category_highlight,
    Key? key}) : super(key: key);

  final String category_name;
  final Color backgroundcolor;
  final int index;
  final void Function(int index) category_highlight;

  @override
  Widget build(BuildContext context) {

    bool screen_size = get_screen_size(context);

    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 8.h,
      ),
      child: InkWell(
        onTap: (){ category_highlight(index); },
        borderRadius:BorderRadius.all(Radius.circular(20.w)) ,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.w)),
            color: backgroundcolor,
          ),
          alignment: Alignment.center,
          width: 100.w,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 1.h
              ),
              child: cario_text(
                containt: category_name,
                fontsize: screen_size ? 16.spMin : 24.spMin,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
