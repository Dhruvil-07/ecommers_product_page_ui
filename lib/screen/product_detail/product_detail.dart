import 'package:flutter/material.dart';
import 'package:produc_list_and_product_dtl_ui/model/product_model.dart';


class product_detail extends StatelessWidget {
  const product_detail({
    required this.product_dtl,
    Key? key}) : super(key: key);

  final product_model product_dtl;

  @override
  Widget build(BuildContext context) {
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

      body: Center(
        child: Hero(
          tag: product_dtl.id,
            child: Container(
              height: double.infinity,
                width: double.infinity,
                color: product_dtl.color,
                child: Image.asset(product_dtl.image)
            ),
        ),
      ),

    );
  }
}
