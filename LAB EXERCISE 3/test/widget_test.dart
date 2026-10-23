
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_03_lesson_05/lab03_exercise.dart';

void main() {
  testWidgets('Restaurant menu displays all items', (
      WidgetTester tester,
      ) async {
    await tester.pumpWidget(const Lab05());

    expect(find.text('Android ATC Pizza Place'), findsOneWidget);
    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });
}
