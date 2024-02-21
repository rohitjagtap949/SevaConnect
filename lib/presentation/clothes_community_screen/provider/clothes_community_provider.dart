import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/clothes_community_screen/models/clothes_community_model.dart';

/// A provider class for the ClothesCommunityScreen.
///
/// This provider manages the state of the ClothesCommunityScreen, including the
/// current clothesCommunityModelObj

// ignore_for_file: must_be_immutable
class ClothesCommunityProvider extends ChangeNotifier {
  ClothesCommunityModel clothesCommunityModelObj = ClothesCommunityModel();

  @override
  void dispose() {
    super.dispose();
  }
}
