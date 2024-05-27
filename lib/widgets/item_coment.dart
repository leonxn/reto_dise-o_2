import 'package:flutter/material.dart';
import 'package:reto_disenio_2/constans/constans.dart';

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
      padding: const EdgeInsets.fromLTRB(12, 30, 12, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: colorContenedor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
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
                        style: titulo,
                      ),
                      Text(horaEnvio),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4),
                      Text(
                        asunto,
                        style: subtitulo,
                      ),
                      SizedBox(height: 8),
                      Text(
                        contenido,
                        style: textoNormal,
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: colorFondo,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 3, 15, 3),
                              child: Row(
                                children: [
                                  Icon(Icons.attach_file_rounded),
                                  SizedBox(width: 4),
                                  Text(
                                    "$numeroArchivos file attach...",
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
                                  ? colorFavoritoInactivo
                                  : colorFavoritoActivo,
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
