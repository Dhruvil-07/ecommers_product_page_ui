import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:produc_list_and_product_dtl_ui/screen/product_detail/product_detail.dart';
import 'package:produc_list_and_product_dtl_ui/screen/product_list/product_list.dart';

void main()
{
   WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
   .then((value){   runApp(my_product()); });

}

class my_product extends StatelessWidget {
  const my_product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: product_list(),
        );
      },

    );
  }
}
