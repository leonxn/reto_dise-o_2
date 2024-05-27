class ComentModel {
  String nombre;
  String asunto;
  String contenido;
  int numeroArchivos;
  String email;
  String horaEnvio;
  int statusEmail;
  bool favorito;

  ComentModel({
    required this.nombre,
    required this.asunto,
    required this.contenido,
    required this.numeroArchivos,
    required this.email,
    required this.horaEnvio,
    required this.statusEmail,
    required this.favorito,
  });
}
