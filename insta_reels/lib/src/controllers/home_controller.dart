import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool isDarkTheme = true;

  @action
  changeToDarkTheme(bool value) {
    isDarkTheme = value;
  }

  @action
  changeToLightTheme(bool value) {
    isDarkTheme = value;
  }
}
