import 'package:flutter_test/flutter_test.dart';
import 'package:dio_interceptor_plus/dio_interceptor_plus_platform_interface.dart';
import 'package:dio_interceptor_plus/dio_interceptor_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDioInterceptorPlusPlatform
    with MockPlatformInterfaceMixin
    implements DioInterceptorPlusPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DioInterceptorPlusPlatform initialPlatform =
      DioInterceptorPlusPlatform.instance;

  test('$MethodChannelDioInterceptorPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDioInterceptorPlus>());
  });

  test('getPlatformVersion', () async {
    // DioInterceptorPlus dioInterceptorPlusPlugin = DioInterceptorPlus();
    MockDioInterceptorPlusPlatform fakePlatform =
        MockDioInterceptorPlusPlatform();
    DioInterceptorPlusPlatform.instance = fakePlatform;

    // expect(await dioInterceptorPlusPlugin.getPlatformVersion(), '42');
  });
}
