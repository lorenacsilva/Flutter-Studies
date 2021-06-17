import 'package:flutter/cupertino.dart';

//ChangeNotifier como se fosse um SetStage mas apenas codigo de programação, não tela
class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool dartTheme = false;
  changeTheme() {
    dartTheme = !dartTheme;
    notifyListeners(); // notifica quem está ouvindo
  }
}
