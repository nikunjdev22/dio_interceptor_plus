import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

/// Custom Dio Interceptor for logging requests and responses
class LoggingInterceptor extends Interceptor {
  /// Execute before a request is sent
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Debug print for request details
    debugPrint('🚀 🌐 Request 🌐 🚀');
    debugPrint('🔗 URL: ${options.uri}');
    debugPrint('🤔 Method: ${options.method}');
    debugPrint('📋 Headers: ${jsonEncode(options.headers)}');
    debugPrint('🔍 Query Parameters: ${options.queryParameters}');
    debugPrint('📤 Request Data: ${options.data}');
    debugPrint('---------------------');
    super.onRequest(options, handler);
  }

  /// Execute after a response is received
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Debug print for response details
    debugPrint('✅ 🌐 Response 🌐 ✅');
    debugPrint('🔗 URL: ${response.realUri}');
    debugPrint('🔒 Status Code: ${response.statusCode}');

    // Convert headers to a map and then encode to JSON
    final headersMap = response.headers.map;
    debugPrint('📋 Headers: ${jsonEncode(headersMap)}');
    debugPrint('📋 Response Data: ${response.data}');

    debugPrint('-----------------------');
    super.onResponse(response, handler);
  }

  /// Execute when an error occurs
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Debug print for error details
    debugPrint('❌ ❗ ERROR ❗ ❌');
    if (err.response != null && err.response!.statusCode != null) {
      debugPrint('🔗 URL: ${err.requestOptions.uri}');
      debugPrint('🔒 Status Code: ${err.response?.statusCode}');
      debugPrint('❗ Error Type: ${err.type}');
      debugPrint('❗ Error Message: ${err.message}');
    } else {
      debugPrint('❗ Error Type: ${err.type}');
      debugPrint('❗ Error Message: ${err.message}');
    }

    debugPrint('---------------------');
    super.onError(err, handler);
  }
}
