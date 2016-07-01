import 'package:angular2/core.dart';
import 'package:zumbi_spotify/models.dart';
import 'package:angular2/router.dart';

@Component(
  selector: 'album-item',
  templateUrl: 'views/album_item.component.html')
class AlbumItemComponent {
  final Router _router;
  @Input() Album album;

  AlbumItemComponent(this._router);

  onDetails(Album album) {
    _router.navigate(['AlbumDetails', {'id': album.id.toString()}]);
  }

}
