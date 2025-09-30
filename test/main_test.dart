import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_1/main.dart';

void main() {
  testWidgets('Verify widget test ', (WidgetTester tester)async {
    await tester.pumpWidget(MaterialApp(home: LoginPage()));
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(Text), findsNWidgets(4));
    expect(find.text("تسجيل الدخول"), findsNWidgets(2));
    expect(find.bySemanticsLabel("البريد الإلكتروني"), findsNWidgets(1));
    expect(find.byWidgetPredicate((widget) =>
    widget is TextFormField), findsNWidgets(2));
    await tester.tap(find.byKey(Key("login_button")));
    await tester.pump();
    expect(find.byType(Text), findsNWidgets(4));
    // expect(find.text("من فضلك أدخل كلمة المرور"), findsNWidgets(1));
    // expect(find.text("من فضلك أدخل البريد الإلكتروني"), findsNWidgets(1));


  });
}
/// 1- select type testWidgets
/// 2- Add call back function WidgetTester tester
/// 3- add async
/// 4- add await
/// 5- we need to give him the parent Material App because he need to inherit things
/// 6- await tester.tap(find.byKey(Key("login_button"))); when you test behavior tap on button
/// important to add  await tester.pump(); when you test behavior to pump widget
///