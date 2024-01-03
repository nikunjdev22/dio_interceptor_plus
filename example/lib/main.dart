import 'package:dio/dio.dart';
import 'package:dio_interceptor_plus/dio_interceptor_plus.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  // Create Dio instance
  final dio = Dio();

  // Add logging interceptor for request and response
  dio.interceptors.add(LoggingInterceptor());

  // Example HTTP Request
  try {
    await dio.get('https://jsonplaceholder.typicode.com/posts/1');
  } catch (e) {
    // Handle errors
    debugPrint('Error: $e');
  }
}
