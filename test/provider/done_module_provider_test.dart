import 'package:flutter_test/flutter_test.dart';
import 'package:state_management/done_module_provider.dart';

void main() {
  group('provider test', (() {
    //arrange, menyiapkan objek dan pengaturan yang akan diuji
    const testModuleName = 'Test Module';
    late DoneModuleProvider doneModuleProvider;

    setUp(() {
      //setup akan dijalankan setiap pengujian dari fungsi test
      doneModuleProvider = DoneModuleProvider();
    });

    test('should contain new item when module complete', () {
      //act, aksi yang ingin dijalankan
      doneModuleProvider.complete(testModuleName);

      //assert, verifikasi nilai yang diekspektasikan dengan hasil pemanggilan metode ketika act
      var result = doneModuleProvider.doneModuleList.contains(testModuleName);
      expect(result, true);
    });

    test('should not contain item when module removed', () {
      //act
      doneModuleProvider.remove(testModuleName);

      //assert
      var result = doneModuleProvider.doneModuleList.contains(testModuleName);
      expect(result, false);
    });
  }));
}
