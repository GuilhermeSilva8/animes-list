class AnimeModel {

  int id = 0;
  String titulo = "";
  String sinopse = "";
  String img = "";
  String diretor = "";
  String estado = "";

  AnimeModel();

  AnimeModel.fromJson(Map<String, dynamic> json){
      id = json['id'];
      titulo = json['titulo'];
      sinopse = json['sinopse'];
      img = json['img'];
      diretor = json['diretor'];
      estado = json['estado'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['titulo'] = this.titulo;
    data['sinopse'] = this.sinopse;
    data['img'] = this.img;
    data['diretor'] = this.diretor;
    data['estado'] = this.estado;
    return data;
  }
}