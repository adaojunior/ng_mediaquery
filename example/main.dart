library mediaquery.example;

import 'package:angular2/bootstrap.dart';
import 'package:angular2/angular2.dart' show Component, NgIf;
import 'package:ng_mediaquery/ng_mediaquery.dart';

@Component(
    selector: 'app',
    directives: const [MediaQuery, NgIf],
    template: '''
      <h1>Media Query is awesome</h1>

      <media-query query="(max-width : 768px)" [(matches)]="isSmallDevice"></media-query>

      <h1 *ngIf="isSmallDevice">This is a Small Device</h1>
      <h1 *ngIf="!isSmallDevice">This is a Large device</h1>
  ''')
class AppComponent {
  bool isSmallDevice = false;
}

main() => bootstrap(AppComponent, []);
