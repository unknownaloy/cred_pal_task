import 'dart:async' show Future;
import 'package:flutter/foundation.dart'
    show LicenseEntryWithLineBreaks, LicenseRegistry;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A wrapper class that contains methods to bootstrap the app launch.
///
/// It initializes the important services at app startup to allow
/// synchronous access to them later on.
class AppBootstrapper {
  const AppBootstrapper._();

  /// Initializer for important and asynchronous app services
  /// Should be called in main after `WidgetsBinding.FlutterInitialized()`.
  ///
  /// [mainAppWidget] is the first widget that loads on app startup.
  /// [runApp] is the main app binding method that launches our [mainAppWidget].
  static Future<void> init({
    required Widget mainAppWidget,
    required void Function(Widget) runApp,
  }) async {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top],
    );

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    // Load Roboto font license
    LicenseRegistry.addLicense(() async* {
      final license = await rootBundle.loadString(
        'assets/fonts/roboto/OFL.txt',
      );
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    });

    final screenWidth =
        WidgetsBinding
            .instance
            .platformDispatcher
            .views
            .first
            .physicalSize
            .width /
        WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

    if (screenWidth < 600) {
      // For restricting the app to portrait mode only
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }

    runApp(mainAppWidget);
  }
}
