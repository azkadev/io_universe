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

/// Cross-platform implementation of "dart:io" that works on browsers too.
///
/// # Usage
/// Replace imports of "dart:io" with:
/// ```
/// import 'package:io_universe/io.dart';
/// ```
library;

export 'core/_exports_in_vm.dart'
    if (dart.library.html) 'core/_exports_in_browser.dart'
    if (dart.library.js) 'core/_exports_in_nodejs.dart'
    if (dart.library.js_interop) 'core/_exports_in_wasm.dart';
