import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dio_interceptor_plus_platform_interface.dart';

/// An implementation of [DioInterceptorPlusPlatform] that uses method channels.
class MethodChannelDioInterceptorPlus extends DioInterceptorPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dio_interceptor_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
