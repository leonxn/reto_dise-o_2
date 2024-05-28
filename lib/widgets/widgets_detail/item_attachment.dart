import 'package:flutter/material.dart';
import 'package:reto_disenio_2/constans/constans.dart';

class ItemAttachment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: colorFondo,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/iconos/carpeta.png',
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2 File Attachment",
                        style: titulo,
                      ),
                      Text(
                        "5.6 mb",
                        style: subtitulo,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.download_for_offline_outlined,
                  color: colorPrimario,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
