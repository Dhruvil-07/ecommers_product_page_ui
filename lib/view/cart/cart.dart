import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/text/text.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/add_to_card_controller/add_to_cart_controller.dart';
import 'package:produc_list_and_product_dtl_ui/view_model/selected_product_controller/selected_product_controller.dart';

class cart extends StatelessWidget {
  const cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        elevation: 0.0,
        title: algeriya_text(Containt: "Cart" ,fontcolor: Colors.black, fontsize: 24.spMin,),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8.h, horizontal: 10.w
          ),
          child: Obx(
            () => ListView.builder(
                itemCount: addtocart_contoller.cart.length,
                itemBuilder: (context, index){
                  return Dismissible(
                    key: Key(addtocart_contoller.cart.value[index].id.toString()),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction){
                         addtocart_contoller.removefromcard(index);
                      },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.w,
                        vertical: 12.h,
                      ),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                          border: Border.all(color: Colors.black),
                        ),
                        height: 150.h,
                        width: double.infinity,
                        child: Row(
                          children: [

                            Expanded(
                              child: Container(
                                child: Image.asset(addtocart_contoller.cart.value[index].image ,
                                fit: BoxFit.fill,
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 2,
                              child:Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.w,
                                  vertical: 4.h,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    //title and subtitle
                                    RichText(
                                        text: TextSpan(
                                          children: [

                                             TextSpan(text: "${addtocart_contoller.cart.value[index].title} \n" ,
                                               style: GoogleFonts.alegreya(
                                                  fontSize: 28.spMin,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                               ),
                                             ),

                                            TextSpan(text: "Aristocratic Hand Bag"  ,
                                               style: GoogleFonts.alegreya(
                                                  fontSize: 16.spMin,
                                                  color: Colors.grey.shade500,
                                                  fontWeight: FontWeight.bold,
                                               ),
                                             ),

                                          ]
                                    )),

                                    SizedBox(height: 8.h,),

                                    Row(
                                      children: [

                                        cario_text(Containt: "Price : \$ ${addtocart_contoller.cart.value[index].price}" ,
                                        fontsize: 18.spMin,
                                        ),

                                        SizedBox(width: 32.w,),

                                        cario_text(Containt: "Size : ${addtocart_contoller.cart.value[index].size}",
                                        fontsize: 18.spMin,
                                        ),

                                      ],
                                    ),


                                    SizedBox(height: 16.h,),

                                   Padding(
                                     padding: EdgeInsets.symmetric(
                                       horizontal: 24.w,
                                     ),
                                     child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: addtocart_contoller.cart.value[index].color,
                                            borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                                          ),
                                          height: 30.h,
                                          child: algeriya_text(Containt: "Buy Now" , fontsize: 18.spMin , fontcolor: Colors.white),
                                        ),
                                   ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        )
                      ),
                    ),
                  );
            }),
          ),
        ),
      ),
    );
  }
}
