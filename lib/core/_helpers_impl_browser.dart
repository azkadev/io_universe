//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// import 'dart:html' as html;
//

// import 'dart:js_interop';

import 'dart:js_interop';

import "package:web/web.dart" as web;
import 'package:io_universe/io_universe.dart';

import '_browser_http_client_impl.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
String? get htmlWindowOrigin => web.window.origin;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
String get locale {
  final List<JSString> languages = web.window.navigator.languages.toDart;
  if (languages.isNotEmpty) {
    return languages.first.toDart;
  }

  return 'en-US';
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
String get operatingSystem {
  final s = web.window.navigator.userAgent.toLowerCase();
  if (s.contains('iphone') || s.contains('ipad') || s.contains('ipod') || s.contains('watch os')) {
    return 'ios';
  }
  if (s.contains('mac os')) {
    return 'macos';
  }
  if (s.contains('fuchsia')) {
    return 'fuchsia';
  }
  if (s.contains('android')) {
    return 'android';
  }
  if (s.contains('linux') || s.contains('cros') || s.contains('chromebook')) {
    return 'linux';
  }
  if (s.contains('windows')) {
    return 'windows';
  }
  return '';
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
String get operatingSystemVersion {
  final userAgent = web.window.navigator.userAgent;

  // Android?
  {
    final regExp = RegExp('Android ([a-zA-Z0-9.-_]+)');
    final match = regExp.firstMatch(userAgent);
    if (match != null) {
      final version = match.group(1) ?? '';
      return version;
    }
  }

  // iPhone OS?
  {
    final regExp = RegExp('iPhone OS ([a-zA-Z0-9.-_]+) ([a-zA-Z0-9.-_]+)');
    final match = regExp.firstMatch(userAgent);
    if (match != null) {
      final version = (match.group(2) ?? '').replaceAll('_', '.');
      return version;
    }
  }

  // Mac OS X?
  {
    final regExp = RegExp('Mac OS X ([a-zA-Z0-9.-_]+)');
    final match = regExp.firstMatch(userAgent);
    if (match != null) {
      final version = (match.group(1) ?? '').replaceAll('_', '.');
      return version;
    }
  }

  // Chrome OS?
  {
    final regExp = RegExp('CrOS ([a-zA-Z0-9.-_]+) ([a-zA-Z0-9.-_]+)');
    final match = regExp.firstMatch(userAgent);
    if (match != null) {
      final version = match.group(2) ?? '';
      return version;
    }
  }

  // Windows NT?
  {
    final regExp = RegExp('Windows NT ([a-zA-Z0-9.-_]+)');
    final match = regExp.firstMatch(userAgent);
    if (match != null) {
      final version = (match.group(1) ?? '');
      return version;
    }
  }

  return '';
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
HttpClient newHttpClient() => BrowserHttpClientImpl();
