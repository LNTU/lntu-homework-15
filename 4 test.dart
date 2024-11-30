import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should increment counter by 7', (WidgetTester tester) async {
    int counter = 0;

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Counter: $counter')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter += 7;
          },
          child: Icon(Icons.add),
        ),
      ),
    ));

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(counter, 7);
  });
}
