import 'package:flutter_test/flutter_test.dart';

import 'package:velvet_bite/main.dart';

void main() {
  testWidgets('App renders Hero Section smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const VelvetBiteApp());

    // Verify that our Hero Section renders the main title.
    expect(find.text('VELVET BITE'), findsOneWidget);
    expect(find.text('Sweet Moments Start Here ✨'), findsOneWidget);
    expect(find.text('Explore Menu'), findsOneWidget);
  });
}
