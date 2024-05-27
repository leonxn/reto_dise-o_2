import 'package:flutter/material.dart';
import 'package:reto_disenio_2/widgets/item_coment.dart';

class PantallaPrincipal extends StatefulWidget {
  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
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
          ItemComent(
              nombre: 'Carlos León',
              asunto: 'Prueba Email',
              contenido: 'Contenido correo de prueba.',
              numeroArchivos: 1,
              favorito: true,
              email: 'cloen@gmail.com',
              horaEnvio: '10:00 am',
              statusEmail: 'No Leido'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[600],
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(
          Icons.add,
          size: 50.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
