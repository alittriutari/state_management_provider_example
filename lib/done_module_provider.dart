import 'package:flutter/cupertino.dart';

class DoneModuleProvider extends ChangeNotifier {
  final List<String> _doneModuleList = [];

  List<String> get doneModuleList => _doneModuleList;

  void complete(String moduleNam) {
    _doneModuleList.add(moduleNam);
    notifyListeners();
  }

  void remove(String moduleName) {
    _doneModuleList.remove(moduleName);
    notifyListeners();
  }
}
