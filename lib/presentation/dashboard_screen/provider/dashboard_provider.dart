import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/dashboard_screen/models/dashboard_model.dart';

/// A provider class for the DashboardScreen.
///
/// This provider manages the state of the DashboardScreen, including the
/// current dashboardModelObj

// ignore_for_file: must_be_immutable
class DashboardProvider extends ChangeNotifier {
  DashboardModel dashboardModelObj = DashboardModel();

  @override
  void dispose() {
    super.dispose();
  }
}
