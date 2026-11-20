/// Environment-facing configuration for the Ozithy buyer app.
///
/// Secrets and Paystack keys must never live here — only public client config.
abstract final class AppConfig {
  static const String appName = 'Ozithy';
  static const String androidApplicationId = 'com.ozithy.mobile';
  static const String iosBundleId = 'com.ozithy.mobile';

  /// PPP buyer API origin (override per flavor / --dart-define later).
  static const String apiBaseUrl = String.fromEnvironment(
    'OZITHY_API_BASE_URL',
    defaultValue: 'http://localhost',
  );
}
