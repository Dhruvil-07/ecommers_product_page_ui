import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:produc_list_and_product_dtl_ui/model/product_model.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/appbar/appbar.dart';

class product_dtl extends StatefulWidget {
   product_dtl({ required this.Product_model , Key? key}) : super(key: key);

  product_model Product_model;

  @override
  State<product_dtl> createState() => _product_dtlState();
}

class _product_dtlState extends State<product_dtl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: appbar(
          title: "",
          color: Colors.white,
          appbarcolor: widget.Product_model.color,
      ),


      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            color: widget.Product_model.color,
            height: double.infinity,
            width: double.infinity,
            child: Hero(
              tag: widget.Product_model.id,
              child: Image.asset(widget.Product_model.image),
            ),
          ),
        ),
      ),

    );
  }
}
