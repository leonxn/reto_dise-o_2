class ComentModel {
  String nombre;
  String asunto;
  String contenido;
  int numeroArchivos;
  bool favorito;
  String email;
  String horaEnvio;
  int statusEmail;

  ComentModel({
    required this.nombre,
    required this.asunto,
    required this.contenido,
    required this.numeroArchivos,
    required this.favorito,
    required this.email,
    required this.horaEnvio,
    required this.statusEmail,
  });
}
