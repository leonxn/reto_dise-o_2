import 'dart:math';
import 'package:flutter/material.dart';
import 'package:reto_disenio_2/models/email_model.dart';
import 'package:reto_disenio_2/widgets/item_email.dart';
import 'package:reto_disenio_2/constans/constans.dart';
import 'detail_email.dart';

class PantallaPrincipal extends StatefulWidget {
  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  List<EmailModel> emailList = [
    EmailModel(
      nombre: 'Carlos León',
      asunto: 'Finished the part of UX',
      contenido:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      numeroArchivos: 1,
      email: 'admin@gmail.com',
      horaEnvio: '11:30 am',
      favorito: true,
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
      backgroundColor: colorFondo,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorPrimario,
        onPressed: () {
          EmailModel nuevoEmail = EmailModel(
            nombre: 'Melvin Sherman',
            asunto: 'Fonts,Mockups & Templates',
            contenido:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            numeroArchivos: Random().nextInt(6),
            email: 'admin2@gmail.com',
            horaEnvio: '11:30 am',
            favorito: false,
            statusEmail: Random().nextInt(3),
          );
          emailList.add(nuevoEmail);
          setState(() {});
        },
        child: const Icon(
          Icons.add,
          size: 50.0,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: colorFondo,
        leading: Icon(
          Icons.sort,
          color: colorIcono,
        ),
        title: Center(
          child: Text(
            "Email",
            style: TextStyle(
              color: colorIcono,
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
            child: Icon(
              Icons.search,
              color: colorIcono,
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          print("prueba ventana nueva");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailEmail()),
          );
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Inbox',
                  style: tabActivo,
                ),
                Text(
                  'Sent',
                  style: tabInactivo,
                ),
                Text(
                  'Draft',
                  style: tabInactivo,
                ),
              ],
            ),
            ...emailList.map(
              (e) => ItemEmail(
                nombre: e.nombre,
                asunto: e.asunto,
                contenido: e.contenido,
                numeroArchivos: e.numeroArchivos,
                email: e.email,
                horaEnvio: e.horaEnvio,
                statusEmail: e.statusEmail,
                favorito: e.favorito,
                funcionFavoritos: () {
                  print("add Favorites");
                  print(emailList.indexOf(e));
                  print(e.favorito);
                  setState(
                    () {
                      if (e.favorito == true) {
                        e.favorito = false;
                      } else {
                        e.favorito = true;
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
