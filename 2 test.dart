import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should display correct group and name text', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('KN32: I.O.M.\'s last Flutter App'),
        ),
      ),
    ));

    expect(find.text('KN32: I.O.M.\'s last Flutter App'), findsOneWidget);
  });
}
