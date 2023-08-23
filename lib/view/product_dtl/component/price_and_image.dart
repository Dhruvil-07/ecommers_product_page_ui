import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class price_and_image extends StatelessWidget {
  const price_and_image({
    required this.id,
    required this.price,
    required this.image,
    Key? key}) : super(key: key);

  final price , image , id;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        //price
        RichText(text: TextSpan(
            children: [

              TextSpan(text: "Price \n" , style: TextStyle(fontSize: 22.spMin , fontWeight: FontWeight.bold)),
              TextSpan(text: "\$${price}" , style: TextStyle(fontSize: 32.spMin , fontWeight: FontWeight.bold)),

            ]
        )),

        SizedBox(width: 8.w,),

        Expanded(
          child: Hero(
              tag: id,
              child: Image.asset(image , fit: BoxFit.contain,)
          ),
        ),
      ],
    );
  }
}
