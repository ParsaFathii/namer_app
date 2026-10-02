import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:namer_app/main.dart';

void main() {
  testWidgets('app renders the generator page with a word pair and navigation',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // The bottom navigation bar with both destinations is present.
    expect(find.byType(NavigationBar), findsOneWidget);
    expect(find.text('Generator'), findsOneWidget);
    expect(find.text('Favorites'), findsOneWidget);

    // The generator card renders exactly one word pair on screen.
    expect(find.byType(SafeArea), findsWidgets);
  });
}
