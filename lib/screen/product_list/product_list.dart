import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:produc_list_and_product_dtl_ui/get_screen_size.dart';
import 'package:produc_list_and_product_dtl_ui/reusable_widget/text.dart';
import 'package:produc_list_and_product_dtl_ui/screen/product_list/component/category_iteam.dart';
import 'package:produc_list_and_product_dtl_ui/screen/product_list/component/iteam_show_card.dart';
import 'package:produc_list_and_product_dtl_ui/screen/product_list/component/product_grid.dart';


class product_list extends StatefulWidget {
  const product_list({Key? key}) : super(key: key);

  @override
  State<product_list> createState() => _product_listState();
}

class _product_listState extends State<product_list> {

  //category list
  List<String> product_category =
  [
    "Hand Bag" , "Jewellery" , "Footwear" , "Dresses" , "Lipsticks"
  ];

  //for highlight current selected category
  int curren_index = 0;
  void hightlght_category(int index)
  {
     setState(() {
       curren_index = index;
     });
  }

  @override
  Widget build(BuildContext context) {

    bool screen_size = get_screen_size(context);

    return Scaffold(

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_rounded , size: 30.0, color: Colors.black),
        ),
       actions: [

         IconButton(
           onPressed: (){},
           icon: Icon(Icons.search_rounded , size: 30.0, color: Colors.black),
         ),

         SizedBox(width: 8.0,),

         IconButton(
           onPressed: (){},
           icon: Icon(Icons.add_shopping_cart, size: 30.0, color: Colors.black),
         ),

       ],
      ),

      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child:Column(
          children: [

            //women text
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screen_size ? 16.w : 12.w,
                vertical: screen_size ? 4.h : 2.h,
              ),
              child: Row(
                children: [
                  algeriya_text(containt: "Womens" ,
                    fontsize: screen_size ? 25.sp : 20.sp ,
                  )
                ],
              ),
            ),

            SizedBox(height: screen_size ? 4.h : 8.h,),

            //scoleble category list
            SizedBox(
              height: screen_size ? 54.sp : 32.sp,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: product_category.length,
                itemBuilder: (context, index)
                {
                  return category_iteam(
                    category_name: product_category[index],
                    backgroundcolor: curren_index == index ? Colors.deepPurple.shade300 : Colors.deepPurple.shade50,
                    index: index,
                    category_highlight: hightlght_category,
                  );
                },
              ),
            ),

            SizedBox(height: get_screen_size(context) ? 16.h : 24.h,),

            //product grid
            Expanded(
              child : Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screen_size ? 16.w : 8.w,
                ),
                child: product_grid(),
              ),
            )

          ],

        ),
      ),

    );
  }
}
