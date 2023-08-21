import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/text/text.dart';
import 'package:produc_list_and_product_dtl_ui/view/product_list/product_list_page.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/product_list_controller/product_list_cotnroller.dart';

class category_scroller extends StatefulWidget {
  category_scroller({Key? key}) : super(key: key);

  @override
  State<category_scroller> createState() => _category_scrollerState();
}

class _category_scrollerState extends State<category_scroller> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                height: 65.0,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: product_list_controller.product_category.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 14.0
                      ),
                        child: Obx(
                          () =>GestureDetector(
                            onTap: (){
                              product_list_controller.select_category(index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: product_list_controller.current_index == index ? Colors.deepPurple.shade600 : Colors.deepPurple.shade50,
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                border: Border.all(color: Colors.black)
                              ),
                              alignment: Alignment.center,
                              height: 10.0, width: 150.0,
                              child: cario_text(Containt: product_list_controller.product_category[index] ,
                              fontsize: 17.0,
                                fontcolor: product_list_controller.current_index == index ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        )
                    );
                  }),
              );
  }
}
