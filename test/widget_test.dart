import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter/main.dart';

void main() {
  testWidgets('Login page test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Verifikasi AppBar dengan title Login
    expect(find.widgetWithText(AppBar, 'Login'), findsOneWidget);

    // Verifikasi textfields ada
    expect(find.byKey(const Key('username')), findsOneWidget);
    expect(find.byKey(const Key('password')), findsOneWidget);

    // Verifikasi button login ada
    expect(find.byKey(const Key('btn_login')), findsOneWidget);
  });
}