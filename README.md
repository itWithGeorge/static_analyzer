


[LINTER STARTS] ----------------------------------------------------------

# linter packages
default: https://pub.dev/packages/flutter_lints
https://pub.dev/packages/lint/install
https://pub.dev/packages/analyzer

# linter rules: https://dart-lang.github.io/linter/lints/index.html

1 - add rule fe.: use_string_buffers
2 - [dart analyze]

[LINTER ENDS] ----------------------------------------------------------

[GITHUB ACTIONS STARTS] ----------------------------------------------------------
//https://betterprogramming.pub/creating-a-complete-github-workflow-for-flutter-529f6bd7bb10
//https://betterprogramming.pub/ci-cd-for-flutter-apps-using-github-actions-b833f8f7aac

the best Github actions: https://github.com/marketplace/actions/flutter-action
ga analyzer: https://github.com/marketplace/actions/dart-flutter-package-analyzer
ga analyze dart: https://github.com/marketplace/actions/analyze-dart
https://chromium.googlesource.com/external/github.com/flutter/flutter/+/refs/heads/dev/analysis_options.yaml

// run workflow from Github UI
https://docs.github.com/en/actions/managing-workflow-runs/manually-running-a-workflow

// running unit tests
flutter test test/buffer_test.dart

// running unit test with coverage
// https://github.com/flutter/flutter/wiki/Test-coverage-for-package:flutter
flutter test --coverage test/buffer_test.dart

package to read lcov.info: https://pub.dev/packages/test_cov_console
extension on VSCode - https://codewithandrea.com/articles/flutter-test-coverage/
app distribution and test: https://www.youtube.com/watch?v=BAXvzkgL15o
good flutter example: https://github.com/zgosalvez/github-actions-flutter-workflows
good flutter example: https://dev-yakuza.posstree.com/en/flutter/test-coverage/
https://github.com/marketplace/actions/report-lcov

TODO take a spin with itWithGeorge: https://github.com/marketplace/actions/report-lcov


[GITHUB ACTIONS ENDS] ----------------------------------------------------------