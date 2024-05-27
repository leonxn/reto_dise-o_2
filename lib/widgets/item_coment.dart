import 'package:flutter/material.dart';

class ItemComent extends StatelessWidget {
  final String nombre;
  final String asunto;
  final String contenido;
  final int numeroArchivos;
  final String email;
  final String horaEnvio;
  final int statusEmail;
  final bool favorito;
  VoidCallback funcionFavoritos;

  ItemComent({
    required this.nombre,
    required this.asunto,
    required this.contenido,
    required this.numeroArchivos,
    required this.email,
    required this.horaEnvio,
    required this.statusEmail,
    required this.funcionFavoritos,
    required this.favorito,
  });

  Color validarColorEstado(int estado) {
    if (estado == 1) {
      return Colors.green;
    } else if (estado == 2) {
      return Colors.red;
    } else {
      return Colors.yellow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Icon(
                      Icons.circle,
                      size: 12,
                      color: validarColorEstado(statusEmail),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 8),
              Expanded(
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nombre,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(horaEnvio),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4),
                      Text(asunto),
                      SizedBox(height: 8),
                      Text(contenido),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Color.fromARGB(255, 242, 242, 242),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  Icon(Icons.attach_file_rounded),
                                  SizedBox(width: 4),
                                  Text(
                                    "$numeroArchivos Documentos Adjuntos",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(email),
                          IconButton(
                            icon: Icon(
                              Icons.star_sharp,
                              color: favorito == false
                                  ? Colors.grey[400]
                                  : Colors.yellow[600],
                            ),
                            onPressed: funcionFavoritos,
                          ),
                          //Icon(
                          //  Icons.star_sharp,
                          //  color: favorito
                          //      ? Colors.yellow[600]
                          //      : Colors.grey[400],
                          //),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
