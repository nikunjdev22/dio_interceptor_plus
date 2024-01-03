//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dio_interceptor_plus/dio_interceptor_plus_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) dio_interceptor_plus_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DioInterceptorPlusPlugin");
  dio_interceptor_plus_plugin_register_with_registrar(dio_interceptor_plus_registrar);
}
