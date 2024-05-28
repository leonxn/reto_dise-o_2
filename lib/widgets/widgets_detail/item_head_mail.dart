import 'package:flutter/material.dart';
import 'package:reto_disenio_2/constans/constans.dart';

class ItemHeadMail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
    );
  }
}
