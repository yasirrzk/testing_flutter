import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_flutter/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('login test', (WidgetTester tester) async {
    await tester.pumpWidget(const app.MyApp());  // Ubah ini
    await tester.pumpAndSettle();

    // verifikasi AppBar title "Login" tampil
    expect(find.widgetWithText(AppBar, "Login"), findsOneWidget);

    // mengisi text pada field
    await tester.enterText(find.byKey(const Key('username')), 'testuser');
    await tester.enterText(find.byKey(const Key('password')), 'test123');

    // verifikasi hasil inputan
    expect(find.text('testuser'), findsOneWidget);
    expect(find.text('test123'), findsOneWidget);

    await tester.tap(find.byKey(const Key("btn_login")));
    await tester.pumpAndSettle();
  });
}