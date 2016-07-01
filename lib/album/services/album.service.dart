import 'dart:async';
import 'dart:convert';
import 'package:angular2/core.dart';
import 'package:zumbi_spotify/models.dart';
import 'package:http/browser_client.dart';

@Injectable()
class AlbumService {
  static const _url = "https://api.spotify.com/v1/";
  final BrowserClient _client;

  AlbumService(this._client);

  Future<List<Album>> search(String query) async {
    var response = await _client.get("${_url}search?type=album&q=$query");
    var body = JSON.decode(response.body);
    return body["albums"]["items"].map((value) => new Album.fromJson(value)).toList();
  }

  Future<Album> getAlbum(String id) async {
    var response = await _client.get("${_url}albums/$id");
    return new Album.fromJson(JSON.decode(response.body));
  }

}
