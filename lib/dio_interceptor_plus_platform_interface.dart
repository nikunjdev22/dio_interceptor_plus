import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dio_interceptor_plus_method_channel.dart';

abstract class DioInterceptorPlusPlatform extends PlatformInterface {
  /// Constructs a DioInterceptorPlusPlatform.
  DioInterceptorPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static DioInterceptorPlusPlatform _instance =
      MethodChannelDioInterceptorPlus();

  /// The default instance of [DioInterceptorPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelDioInterceptorPlus].
  static DioInterceptorPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DioInterceptorPlusPlatform] when
  /// they register themselves.
  static set instance(DioInterceptorPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
