import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:testing_flutter/login_page.dart';

void main(){
  group("LoginPage Widget Test", (){

    testWidgets("semua widget ada", (WidgetTester tester) async{
      await tester.pumpWidget(
          MaterialApp(home: LoginPage(),)
      );
      // memverifikasi ada text login pada AppBar/button
      expect(find.text("Login"), findsAny);
      // memverifikasi adanya key username
      expect(find.byKey(const Key('username')), findsOneWidget);
      expect(find.byKey(const Key('password')), findsOneWidget);
    },);

    testWidgets("dapat menginputkan text pada field", (WidgetTester tester) async{
      await tester.pumpWidget(
          MaterialApp(home: LoginPage(),)
      );
      // mengisi  text pada field
      await tester.enterText(find.byKey(const Key('username')), 'testuser');
      await tester.enterText(find.byKey(const Key('password')), 'test123');
      // verifikasi hasil inputan
      expect(find.text('testuser'), findsOneWidget);
      expect(find.text('test123'), findsOneWidget);
    },);

  });
}