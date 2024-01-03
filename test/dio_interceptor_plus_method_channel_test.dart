import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dio_interceptor_plus/dio_interceptor_plus_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelDioInterceptorPlus platform = MethodChannelDioInterceptorPlus();
  const MethodChannel channel = MethodChannel('dio_interceptor_plus');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
