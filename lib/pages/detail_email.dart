import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reto_disenio_2/constans/constans.dart';

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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 35.0,
                                backgroundImage: NetworkImage(
                                    "https://cnnespanol.cnn.com/wp-content/uploads/2019/05/grumpy-cat-foto.jpg?quality=100&strip=info"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Carlos León",
                                      style: titulo,
                                    ),
                                    Text(
                                      "cleon0505@gmail.com",
                                      style: subtitulo,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("10:30 am"),
                        ],
                      ),
                    ],
                  ),
                ),
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
                Container(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                ),
                SizedBox(
                  height: 25,
                ),
                Divider(),
                SizedBox(
                  height: 25,
                ),
                Row(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
