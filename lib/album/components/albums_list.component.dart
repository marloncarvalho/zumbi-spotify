import 'package:angular2/core.dart';
import 'package:zumbi_spotify/album/components/album_item.component.dart';
import 'package:zumbi_spotify/models.dart';
import 'package:zumbi_spotify/album/services/album.service.dart';

@Component(
  selector: 'albums-list',
  directives: const [AlbumItemComponent],
  providers: const [AlbumService],
  templateUrl: 'views/albums_list.component.html')
class AlbumsListComponent {
  String query;
  List<Album> albums = [];
  AlbumService _albumService;

  AlbumsListComponent(this._albumService);

  onSearch() async {
    this.albums = await this._albumService.search(this.query);
  }

}
