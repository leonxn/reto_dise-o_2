import 'package:flutter/material.dart';

final Color? colorPrimario = Colors.blue[600];
final Color? colorSecundario = Colors.grey[400];
final Color? colorFavoritoActivo = Colors.yellow[600];
final Color? colorFavoritoInactivo = Colors.grey[400];
final Color? colorContenedor = Colors.white;
final Color? colorFondo = Colors.blueGrey[50];
final Color? colorIcono = Colors.blueGrey[700];

final TextStyle titulo = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

final TextStyle enlace = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.blue[600],
);

final TextStyle subtitulo = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
);

final TextStyle textoNormal = TextStyle(
  fontSize: 16,
);

final TextStyle tabActivo = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: colorPrimario,
);

final TextStyle tabInactivo = TextStyle(
  fontSize: 22,
  color: colorSecundario,
);
