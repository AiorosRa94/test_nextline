import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'theme_provider.g.dart';

@riverpod
class ThemeApp extends _$ThemeApp {
  @override
  bool build() {
    return true;
  }

  void changeTheme() {
    state = !state;
  }
}
