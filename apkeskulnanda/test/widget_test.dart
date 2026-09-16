import 'package:flutter_test/flutter_test.dart';
import 'package:apkeskulnanda/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title is displayed.
    expect(find.text('Pendaftaran Ekstrakurikuler'), findsWidgets);
  });

  testWidgets('Pendaftaran page test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // Open drawer
    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Pendaftaran').last);
    await tester.pumpAndSettle();

    expect(find.text('Formulir Pendaftaran'), findsOneWidget);
  });

  testWidgets('Hasildaftar page test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // Open drawer
    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Hasil Pendaftaran').last);
    await tester.pumpAndSettle();

    expect(find.text('Hasil Pendaftaran'), findsWidgets);
  });
}
