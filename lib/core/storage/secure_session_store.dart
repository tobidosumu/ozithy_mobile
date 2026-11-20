import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Platform-backed storage for auth tokens and other sensitive local values.
class SecureSessionStore {
  SecureSessionStore({FlutterSecureStorage? storage})
      : _storage = storage ?? const FlutterSecureStorage();

  static const _accessTokenKey = 'ozithy.access_token';

  final FlutterSecureStorage _storage;

  Future<void> writeAccessToken(String token) {
    return _storage.write(key: _accessTokenKey, value: token);
  }

  Future<String?> readAccessToken() {
    return _storage.read(key: _accessTokenKey);
  }

  Future<void> clear() {
    return _storage.delete(key: _accessTokenKey);
  }
}
