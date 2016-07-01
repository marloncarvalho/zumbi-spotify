import 'package:angular2/core.dart';
import 'package:zumbi_spotify/album/components/albums_list.component.dart';
import 'package:zumbi_spotify/album/components/album_details.component.dart';
import 'package:angular2/router.dart';

@RouteConfig(const [
  const Route(
      path: '/albums/',
      name: 'AlbumsList',
      component: AlbumsListComponent,
      useAsDefault: true),
  const Route(
      path: '/album/:id',
      name: 'AlbumDetails',
      component: AlbumDetailsComponent)
])
@Component(
  selector: 'zumbi-spotify',
  templateUrl: 'app.component.html')
class AppComponent {}
