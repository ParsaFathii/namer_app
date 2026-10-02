import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:namer_app/main.dart';

void main() {
  // The app targets phones: at the default 800x600 test surface the
  // wide NavigationRail branch would render instead.
  Future<void> pumpPhoneApp(WidgetTester tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
  }

  testWidgets('app renders the generator page with a word pair and navigation',
      (WidgetTester tester) async {
    await pumpPhoneApp(tester);

    // Phone layout: a bottom navigation bar with both destinations.
    expect(find.byType(BottomNavigationBar), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Favorites'), findsOneWidget);

    // The generator card renders one word pair plus its actions.
    expect(find.byType(ElevatedButton), findsNWidgets(2));
    expect(find.text('Like'), findsOneWidget);
    expect(find.text('Next'), findsOneWidget);
  });

  testWidgets('liking a pair then opening Favorites shows it in the list',
      (WidgetTester tester) async {
    await pumpPhoneApp(tester);

    await tester.tap(find.text('Like'));
    await tester.pumpAndSettle();

    // Switch to the Favorites tab (second destination).
    await tester.tap(find.text('Favorites'));
    await tester.pumpAndSettle();

    expect(find.text('No favorites yet.'), findsNothing);
    expect(find.byIcon(Icons.delete_outline), findsOneWidget);
  });
}
