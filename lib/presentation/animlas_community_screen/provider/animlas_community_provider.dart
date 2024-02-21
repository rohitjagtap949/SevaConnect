import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/animlas_community_screen/models/animlas_community_model.dart';

/// A provider class for the AnimlasCommunityScreen.
///
/// This provider manages the state of the AnimlasCommunityScreen, including the
/// current animlasCommunityModelObj

// ignore_for_file: must_be_immutable
class AnimlasCommunityProvider extends ChangeNotifier {
  AnimlasCommunityModel animlasCommunityModelObj = AnimlasCommunityModel();

  @override
  void dispose() {
    super.dispose();
  }
}
