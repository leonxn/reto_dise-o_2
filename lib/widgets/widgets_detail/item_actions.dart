import 'package:flutter/material.dart';
import 'package:reto_disenio_2/constans/constans.dart';

class ItemActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.reply,
          color: colorIcono,
          size: 25,
        ),
        Icon(
          Icons.delete,
          color: colorIcono,
          size: 25,
        ),
        Icon(
          Icons.star,
          color: colorFavoritoActivo,
          size: 25,
        ),
      ],
    );
  }
}
