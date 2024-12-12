import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:testing_flutter/login_page.dart';

void main(){
  group("LoginPage Widget Test", (){

    testWidgets("semua widget ada", (WidgetTester tester) async{
      await tester.pumpWidget(
          MaterialApp(home: LoginPage(),)
      );
      expect(find.text("Login"), findsAny);
      expect(find.byKey(const Key('username')), findsOneWidget);
      expect(find.byKey(const Key('password')), findsOneWidget);
    },);

    testWidgets("dapat menginputkan text pada field", (WidgetTester tester) async{
      await tester.pumpWidget(
          MaterialApp(home: LoginPage(),)
      );
      await tester.enterText(find.byKey(const Key('username')), 'testuser');
      await tester.enterText(find.byKey(const Key('password')), 'test123');
      expect(find.text('testuser'), findsOneWidget);
      expect(find.text('test123'), findsOneWidget);
    },);

  });
}