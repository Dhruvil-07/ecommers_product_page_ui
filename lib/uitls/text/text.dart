import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class algeriya_text extends StatelessWidget {
   algeriya_text({
    required this.Containt,
    this.fontsize  = 20.0,
    this.fontWeight = FontWeight.bold,
    this.fontcolor,
    Key? key}) : super(key: key);


  String Containt;
  double? fontsize;
  FontWeight? fontWeight;
  Color? fontcolor;

  @override
  Widget build(BuildContext context) {

    var fontcolor_brightness = Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white;

    return Text(Containt ,
    style: GoogleFonts.alegreya(
      textStyle: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: fontcolor == null ? fontcolor_brightness : fontcolor,
      ),
    ),
    );
  }
}






class cario_text extends StatelessWidget {
   cario_text({
    required this.Containt,
    this.fontsize  = 20.0,
    this.fontWeight = FontWeight.bold,
    this.fontcolor,
    Key? key}) : super(key: key);


  String Containt;
  double? fontsize;
  FontWeight? fontWeight;
  Color? fontcolor;

  @override
  Widget build(BuildContext context) {

    var fontcolor_brightness = Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white;

    return Text(Containt ,
    style: GoogleFonts.cairo(
      textStyle: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: fontcolor == null ? fontcolor_brightness : fontcolor,
      ),
    ),
    );
  }
}
