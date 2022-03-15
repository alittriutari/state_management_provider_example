import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:state_management/done_module_provider.dart';
import 'package:state_management/module_page.dart';

void main() {
  group('Module List Page Widget Test', () {
    Widget createHomeScreen() => ChangeNotifierProvider<DoneModuleProvider>(
          create: (context) => DoneModuleProvider(),
          child: MaterialApp(
            home: ModulePage(),
          ),
        );
    testWidgets('testing if listview shows up', (WidgetTester tester) async {
      await tester.pumpWidget(createHomeScreen());
      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('test done button', (tester) async {
      //render widget
      await tester.pumpWidget(createHomeScreen());
      //mencari elevatedbutton pertama kemudian melakukan gestur tap
      await tester.tap(find.byType(ElevatedButton).first);
      //rebuild tampilan karena peruahan state
      await tester.pumpAndSettle();
      // Verifikasi apakah ditemukan 2 ikon done (Termasuk ikon done yang berada di AppBar)
      expect(find.byIcon(Icons.done), findsNWidgets(2));
    });
  });
}
