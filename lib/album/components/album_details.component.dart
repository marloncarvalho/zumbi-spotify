import 'dart:async';
import 'package:angular2/core.dart';
import 'package:zumbi_spotify/models.dart';
import 'package:zumbi_spotify/album/services/album.service.dart';
import 'package:angular2/router.dart';

@Component(
  selector: 'album-details',
  providers: const [AlbumService],
  templateUrl: 'views/album_details.component.html')
class AlbumDetailsComponent implements OnInit {
  Album album;
  final RouteParams _routeParams;
  final AlbumService _albumService;

  AlbumDetailsComponent(this._routeParams, this._albumService);

  Future ngOnInit() async {
    album = await _albumService.getAlbum(_routeParams.get('id'));
  }

}
