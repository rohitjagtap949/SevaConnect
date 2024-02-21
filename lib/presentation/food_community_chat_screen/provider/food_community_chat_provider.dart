import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/food_community_chat_screen/models/food_community_chat_model.dart';

/// A provider class for the FoodCommunityChatScreen.
///
/// This provider manages the state of the FoodCommunityChatScreen, including the
/// current foodCommunityChatModelObj
class FoodCommunityChatProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  FoodCommunityChatModel foodCommunityChatModelObj = FoodCommunityChatModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
