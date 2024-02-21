import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/app_navigation_screen/models/app_navigation_model.dart';

/// A provider class for the AppNavigationScreen.
///
/// This provider manages the state of the AppNavigationScreen, including the
/// current appNavigationModelObj
class AppNavigationProvider extends ChangeNotifier {
  AppNavigationModel appNavigationModelObj = AppNavigationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
