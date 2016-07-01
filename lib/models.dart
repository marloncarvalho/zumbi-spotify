library models;

class Album {
  String id;
  String nome;
  String href;
  String dataLancamento;
  int popularidade;
  String imageUrl;
  List<Artista> artistas;
  List<Musica> musicas = [];

  Album(this.id, this.nome, this.href, this.dataLancamento, this.popularidade, this.imageUrl);

  Album.fromJson(Map<String, dynamic> json) {
    this
      ..id = json["id"]
      ..nome = json["name"]
      ..href = json["href"]
      ..imageUrl = json["images"][1]["url"];

    if(json["popularity"] != null) {
      this.popularidade = json["popularity"];
    }

    if(json["release_date"] != null) {
      this.dataLancamento = json["release_date"];
    }

    if(json["artists"] != null) {
      artistas = json["artists"].map((artist) => new Artista.fromJson(artist));
    }

    if(json["tracks"] != null) {
      musicas = json["tracks"]["items"].map((musica) => new Musica.fromJson(musica));
    }
  }

}

class Artista {
  String id;
  String nome;

  Artista(this.id, this.nome);

  Artista.fromJson(Map<String, dynamic> json) {
    this
      ..id = json["id"]
      ..nome = json["name"];
  }
}

class Musica {
  String id;
  String nome;
  int duracao;
  int ordem;

  Musica.fromJson(Map<String, dynamic> json) {
    this
      ..id = json["id"]
      ..nome = json["name"]
      ..duracao = json["duration_ms"]
      ..ordem = json["number"];
  }
}
