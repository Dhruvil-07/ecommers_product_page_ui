import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class product_model {
  final String image, title, description , category;
  final int price, size, id;
  final Color color;

  product_model({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    required this.category
  });

}
