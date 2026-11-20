import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ozithy_mobile/app/router.dart';
import 'package:ozithy_mobile/app/theme/ozithy_theme.dart';

/// Root Ozithy buyer application shell.
class OzithyApp extends ConsumerWidget {
  const OzithyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Ozithy',
      debugShowCheckedModeBanner: false,
      theme: OzithyTheme.light(),
      routerConfig: router,
    );
  }
}
