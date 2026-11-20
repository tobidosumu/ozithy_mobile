import 'package:material_ui/material_ui.dart';

/// Ozithy brand tokens aligned with the buyer web storefront.
abstract final class OzithyColors {
  static const Color brand = Color(0xFF0284C7);
  static const Color brandStrong = Color(0xFF0369A1);
  static const Color stone900 = Color(0xFF1C1917);
  static const Color stone100 = Color(0xFFF5F5F4);
}

abstract final class OzithyTheme {
  static ThemeData light() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: OzithyColors.brand,
      primary: OzithyColors.brand,
      surface: Colors.white,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: OzithyColors.stone100,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: OzithyColors.stone900,
        elevation: 0,
        centerTitle: false,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: OzithyColors.brand,
        foregroundColor: Colors.white,
      ),
    );
  }
}
