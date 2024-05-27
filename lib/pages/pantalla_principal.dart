import 'dart:math';
import 'package:flutter/material.dart';
import 'package:reto_disenio_2/models/coment_model.dart';
import 'package:reto_disenio_2/widgets/item_coment.dart';

class PantallaPrincipal extends StatefulWidget {
  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  List<ComentModel> comentList = [
    ComentModel(
      nombre: 'Carlos León',
      asunto: 'Finished the part of UX',
      contenido:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      numeroArchivos: 1,
      favorito: true,
      email: 'admin@gmail.com',
      horaEnvio: '11:30 am',
      statusEmail: Random().nextInt(3),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[600],
        onPressed: () {
          ComentModel nuevoComentario = ComentModel(
            nombre: 'Melvin Sherman',
            asunto: 'Fonts,Mockups & Templates',
            contenido:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            numeroArchivos: Random().nextInt(6),
            favorito: false,
            email: 'admin2@gmail.com',
            horaEnvio: '11:30 am',
            statusEmail: Random().nextInt(3),
          );
          comentList.add(nuevoComentario);
          setState(() {});
        },
        child: const Icon(
          Icons.add,
          size: 50.0,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[50],
        leading: Icon(
          Icons.sort,
          color: Colors.blueGrey[700],
        ),
        title: Center(
          child: Text(
            "Email",
            style: TextStyle(
              color: Colors.blueGrey[700],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 15,
            ),
            child: Icon(Icons.search, color: Colors.blueGrey[700]),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Inbox',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[600],
                ),
              ),
              Text(
                'Sent',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueGrey[200],
                ),
              ),
              Text(
                'Draft',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueGrey[200],
                ),
              ),
            ],
          ),
          ...comentList.map((e) => ItemComent(
                nombre: e.nombre,
                asunto: e.asunto,
                contenido: e.contenido,
                numeroArchivos: e.numeroArchivos,
                favorito: e.favorito,
                email: e.email,
                horaEnvio: e.horaEnvio,
                statusEmail: e.statusEmail,
              )),
        ],
      ),
    );
  }
}
