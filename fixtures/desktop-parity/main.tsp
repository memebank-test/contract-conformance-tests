import "@typespec/json-schema";
using TypeSpec.JsonSchema;

namespace Memebank.DesktopParity;

@id("AppSurface")
enum AppSurface {
  mobile: "mobile",
  flutter_desktop: "flutter_desktop",
  rust_desktop: "rust_desktop",
}

@id("AppCapability")
enum AppCapability {
  authentication: "authentication",
  deep_links: "deep_links",
  secure_storage: "secure_storage",
  clipboard_import: "clipboard_import",
  file_import_export: "file_import_export",
  ocr_import: "ocr_import",
  media_library: "media_library",
  offline_cache: "offline_cache",
  background_sync: "background_sync",
  notifications: "notifications",
  telemetry: "telemetry",
  accessibility: "accessibility",
  application_updates: "application_updates",
}

@id("DesktopParityContract")
model DesktopParityContract {
  @minValue(1)
  @maxValue(1)
  version: int32;

  flutter_counterpart: string;
  legacy_rust_counterpart: string;
  surfaces: AppSurface[];
  required_capabilities: AppCapability[];
}
