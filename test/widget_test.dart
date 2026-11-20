import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ozithy_mobile/app/app.dart';

void main() {
  testWidgets('shows Ozithy foundation home', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: OzithyApp()));
    await tester.pumpAndSettle();

    expect(find.text('Ozithy'), findsWidgets);
    expect(find.text('Packaging marketplace'), findsOneWidget);
  });
}
