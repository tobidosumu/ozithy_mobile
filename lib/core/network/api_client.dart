import 'package:dio/dio.dart';

import 'package:ozithy_mobile/app/config/app_config.dart';

/// Shared Dio client for PPP buyer APIs.
///
/// Business rules stay on the Laravel backend — this client only transports
/// authenticated HTTP requests.
class ApiClient {
  ApiClient({Dio? dio})
      : _dio = dio ??
            Dio(
              BaseOptions(
                baseUrl: AppConfig.apiBaseUrl,
                connectTimeout: const Duration(seconds: 20),
                receiveTimeout: const Duration(seconds: 20),
                headers: const {
                  'Accept': 'application/json',
                },
              ),
            );

  final Dio _dio;

  Dio get dio => _dio;
}
