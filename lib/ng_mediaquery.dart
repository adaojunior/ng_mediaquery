// Copyright (c) 2015, Adão Júnior. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library ng.mediaquery;

import 'package:angular2/angular2.dart' show Directive, EventEmitter, OnDestroy;
import 'dart:async' show StreamSubscription;
import 'dart:html' show MediaQueryList, window;

@Directive(
    selector: "media-query",
    inputs: const ["query", "matches"],
    outputs: const ['change : matchesChange'])
class MediaQuery implements OnDestroy {
  StreamSubscription _subscription;

  bool matches;

  EventEmitter change = new EventEmitter();

  set query(String mediaQuery) {
    _subscription?.cancel();
    MediaQueryList query = window.matchMedia(mediaQuery);
    change.add(query.matches);
    _subscription = query.onChange.listen((e) {
      change.add(query.matches);
    });
  }

  ngOnDestroy() {
    _subscription.cancel();
  }
}
