import 'package:flutter/material.dart';

late bool maxwidth;

bool get_screen_size(BuildContext context)
{
    maxwidth = MediaQuery.of(context).size.width < 480;

    return maxwidth;
}