

import 'package:flutter/material.dart';
import 'package:flutter_application_1/App/app.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets("Hello World test", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(Container), findsOneWidget);
    expect(find.text('Hello My name is Hasnain \n I am here to learn Flutter'),
        findsOneWidget);
  });
}
