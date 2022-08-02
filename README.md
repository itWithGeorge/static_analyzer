<a href="https://github.com/ehealthstrom/static_analyzer/actions"><img src="https://github.com/ehealthstrom/static_analyzer/workflows/3rd dart analyzer + unit with coverage + coverage/badge.svg" alt="Build Status"></a>

// see badge documentation here: https://blog.gskinner.com/archives/2022/01/flutter-easily-add-ci-testing-with-github-actions.html

[LINTER STARTS] ----------------------------------------------------------

# linter packages
default: https://pub.dev/packages/flutter_lints
https://pub.dev/packages/lint/install
https://pub.dev/packages/analyzer

# linter rules: https://dart-lang.github.io/linter/lints/index.html

1 - add rule fe.: use_string_buffers
2 - [dart analyze]

[LINTER ENDS] ----------------------------------------------------------

[FLUTTER TEST START] ----------------------------------------------------------
// running unit tests
flutter test test/buffer_test.dart

// running unit test with coverage
// https://github.com/flutter/flutter/wiki/Test-coverage-for-package:flutter
flutter test --coverage test/buffer_test.dart

// flutter widget test

// flutter integration test
https://docs.flutter.dev/testing/integration-tests
https://docs.flutter.dev/cookbook/testing/integration/introduction
great tutorials
https://blog.gskinner.com/archives/2022/01/flutter-easily-add-ci-testing-with-github-actions.html
 + https://github.com/gskinnerTeam/flutter-integration-test-examples/blob/master/integration_test/smoke_test.dart
https://www.raywenderlich.com/29321816-integration-testing-in-flutter-getting-started

[FLUTTER TEST ENDS] -----------------------------------------------------------

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
the best: https://betterprogramming.pub/creating-a-complete-github-workflow-for-flutter-529f6bd7bb10

// interesting flutter gist
https://gist.github.com/Esgrima/c0d4bff4b0d3909daf8994410cd659ce

[GITHUB ACTIONS ENDS] ----------------------------------------------------------

Dart Code analyzer - community driven
https://dartcodemetrics.dev/

[GIT HOOKS START] ----------------------------------------------------------

// examples
https://medium.com/kinandcartacreated/githooks-explained-using-flutter-babcdeb4048d
https://blog.devgenius.io/easy-git-hooks-for-flutter-f2927cbbcfd4
// docs
https://git-scm.com/docs/githooks

1 - [git config core.hooksPath .githooks/]
[GIT HOOKS END] ------------------------------------------------------------

original repo: git@github.com:ehealthstrom/static_analyzer.git

