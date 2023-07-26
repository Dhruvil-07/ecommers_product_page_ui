import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


//algeriya text style
class algeriya_text extends StatelessWidget {
  algeriya_text({
    required this.containt,
    this.fontsize = 20.0,
    this.fontWeight = FontWeight.bold,
    this.fontcolor = Colors.black,
    Key? key}) : super(key: key);

  final String containt;
  double fontsize;
  Color fontcolor;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {

    Color font_theme_color = Theme.of(context).brightness == Brightness.light ?
                             Colors.white : Colors.black;

    return Text(containt,
    style: GoogleFonts.alegreya(
        fontSize: fontsize,
        fontWeight: fontWeight,
      color: fontcolor == null ? font_theme_color : fontcolor,
    ),
    );
  }
}





//cario txt style
class cario_text extends StatelessWidget {
  cario_text({
    required this.containt,
    this.fontsize = 15.0,
    this.fontWeight = FontWeight.bold,
    this.fontcolor = Colors.black,
    Key? key}) : super(key: key);

  final String containt;
  double fontsize;
  Color fontcolor;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {

    Color font_theme_color = Theme.of(context).brightness == Brightness.light ?
    Colors.white : Colors.black;

    return Text(containt,
      style: GoogleFonts.cairo(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: fontcolor == null ? font_theme_color : fontcolor,
      ),
    );
  }
}
