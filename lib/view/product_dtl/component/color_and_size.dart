import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:produc_list_and_product_dtl_ui/uitls/text/text.dart';

class color_and_size extends StatelessWidget {
  color_and_size({ required this.size , Key? key}) : super(key: key);

  final size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
            child: cario_text(Containt: "hello",)
        ),

        Expanded(
          child:  RichText(
            text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: "Size \n" , style:TextStyle(fontSize: 22.spMin)),
                  TextSpan(text: "${size.toString()} cm", style:TextStyle(fontSize: 26.spMin , fontWeight: FontWeight.bold)),
                ]
            ),
          ),
        )

      ],
    );
  }
}
