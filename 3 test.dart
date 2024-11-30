import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should display FloatingActionButton with person icon', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.person),
        ),
      ),
    ));

    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}
