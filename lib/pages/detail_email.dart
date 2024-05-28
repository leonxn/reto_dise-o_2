import 'package:flutter/material.dart';
import 'package:reto_disenio_2/constans/constans.dart';
import 'package:reto_disenio_2/widgets/widgets_detail/item_actions.dart';
import 'package:reto_disenio_2/widgets/widgets_detail/item_attachment.dart';
import 'package:reto_disenio_2/widgets/widgets_detail/item_head_mail.dart';

class DetailEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorFondo,
      appBar: AppBar(
        backgroundColor: colorFondo,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 150, 20, 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: colorContenedor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: colorIcono,
                      size: 30,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: colorIcono,
                      size: 30,
                    ),
                  ],
                ),
                ItemHeadMail(),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    Text(
                      "Fonts, Mockups & Templates",
                      style: titulo,
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    Text(
                      "Hi Jhonson,",
                      style: textoNormal,
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Column(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      style: textoNormal,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      style: textoNormal,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    Text(
                      "Read More",
                      style: enlace,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                ItemAttachment(),
                SizedBox(
                  height: 25,
                ),
                Divider(),
                SizedBox(
                  height: 25,
                ),
                ItemActions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
