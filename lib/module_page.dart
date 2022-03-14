import 'package:flutter/material.dart';
import 'package:state_management/done_module.dart';
import 'package:state_management/main.dart';
import '../../module_list.dart';

class ModulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memulai Pemrograman Dengan Dart'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoneModuleList(),
                ),
              );
            },
          ),
        ],
      ),
      body: ModuleList(),
    );
  }
}
