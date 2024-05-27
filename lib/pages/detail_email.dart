import 'package:flutter/material.dart';
import 'package:reto_disenio_2/constans/constans.dart';

class DetailEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorFondo,
      appBar: AppBar(
        backgroundColor: colorFondo,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 15,
            ),
            child: Icon(
              Icons.more_vert,
              color: colorIcono,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Prueba de nueva ventana',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
