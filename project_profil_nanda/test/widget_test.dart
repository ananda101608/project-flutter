import 'package:flutter_test/flutter_test.dart';
import 'package:project_profil_nanda/main.dart';

void main() {
  testWidgets('CompanyProfileApp smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CompanyProfileApp());

    // Verify that company title and welcome text are displayed.
    expect(find.text('KKS Company'), findsWidgets);
    expect(find.text('Welcome To KKS Company'), findsOneWidget);
  });
}
