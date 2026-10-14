class Noticia {
  final int id;
  final String titulo;
  final String resumo;
  final String conteduo;
  final String? imagem;
  final int categoriaId;
  final DateTime createAt;

  Noticia({
    required this.id,
    required this.titulo,
    required this.resumo,
    required this.conteduo,
    this.imagem,
    required this.categoriaId,
    required this.createAt,
  });

  factory Noticia.fromJson(Map<String, dynamic> json) {
    return Noticia(
      id: json['id'],
      titulo: json['titulo'],
      resumo: json['resumo'],
      conteduo: json['conteduo'],
      categoriaId: json['categoria_id'],
      createAt: json['created_at'],
    );
  }

  String get dataFormatada {
    final dia = createAt.day.toString().padLeft(2, '0');
    final mes = createAt.month.toString().padLeft(2, '0');
    final ano = createAt.year.toString();
    return '$dia/$mes/$ano';
  }
}
