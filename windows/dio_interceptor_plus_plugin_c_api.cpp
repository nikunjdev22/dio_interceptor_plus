#include "include/dio_interceptor_plus/dio_interceptor_plus_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "dio_interceptor_plus_plugin.h"

void DioInterceptorPlusPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  dio_interceptor_plus::DioInterceptorPlusPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
