// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'dio_interceptor_plus_platform_interface.dart';

/// A web implementation of the DioInterceptorPlusPlatform of the DioInterceptorPlus plugin.
class DioInterceptorPlusWeb extends DioInterceptorPlusPlatform {
  /// Constructs a DioInterceptorPlusWeb
  DioInterceptorPlusWeb();

  static void registerWith(Registrar registrar) {
    DioInterceptorPlusPlatform.instance = DioInterceptorPlusWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
