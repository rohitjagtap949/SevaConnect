import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/e_waste_screen/models/e_waste_model.dart';

/// A provider class for the EWasteScreen.
///
/// This provider manages the state of the EWasteScreen, including the
/// current eWasteModelObj

// ignore_for_file: must_be_immutable
class EWasteProvider extends ChangeNotifier {
  EWasteModel eWasteModelObj = EWasteModel();

  @override
  void dispose() {
    super.dispose();
  }
}
