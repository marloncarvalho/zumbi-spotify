import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:http/browser_client.dart';
import 'package:zumbi_spotify/app.component.dart';
import 'package:angular2/router.dart';

BrowserClient HttpClientBackendServiceFactory() => new BrowserClient();

void main() {
  bootstrap(AppComponent, const [ROUTER_PROVIDERS,
    const Provider(BrowserClient, useFactory: HttpClientBackendServiceFactory, deps: const [])
  ]);
}
