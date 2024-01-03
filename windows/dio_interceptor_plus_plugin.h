#ifndef FLUTTER_PLUGIN_DIO_INTERCEPTOR_PLUS_PLUGIN_H_
#define FLUTTER_PLUGIN_DIO_INTERCEPTOR_PLUS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace dio_interceptor_plus {

class DioInterceptorPlusPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DioInterceptorPlusPlugin();

  virtual ~DioInterceptorPlusPlugin();

  // Disallow copy and assign.
  DioInterceptorPlusPlugin(const DioInterceptorPlusPlugin&) = delete;
  DioInterceptorPlusPlugin& operator=(const DioInterceptorPlusPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace dio_interceptor_plus

#endif  // FLUTTER_PLUGIN_DIO_INTERCEPTOR_PLUS_PLUGIN_H_
