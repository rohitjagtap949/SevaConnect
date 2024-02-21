import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/food_community_screen/models/food_community_model.dart';

/// A provider class for the FoodCommunityScreen.
///
/// This provider manages the state of the FoodCommunityScreen, including the
/// current foodCommunityModelObj

// ignore_for_file: must_be_immutable
class FoodCommunityProvider extends ChangeNotifier {
  FoodCommunityModel foodCommunityModelObj = FoodCommunityModel();

  @override
  void dispose() {
    super.dispose();
  }
}
